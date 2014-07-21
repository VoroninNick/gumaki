#encoding: utf-8

class Shoe < ActiveRecord::Base
  has_and_belongs_to_many :shoe_sizes

  attr_accessible :shoe_sizes, :male, :female, :name, :full_description, :short_description, :count, :image

  mount_uploader :image, ShoeImageUploader

  translates :name, :short_description, :full_description
  accepts_nested_attributes_for :translations
  attr_accessible :translations_attributes, :translations

  class Translation
    attr_accessible :locale, :intro_text, :description, :address
  end

  rails_admin do
    edit do
      field :male do
        label 'Чоловічі'
      end

      field :female do
        label 'Жіночі'
      end

      field :name do
        label 'Назва'
      end

      field :image do
        label 'картинка'
      end

      field :short_description do
        label 'короткий опис'
      end

      field :full_description do
        label 'повний опис'
      end

      field :count do
        label 'кількість у наявності'
      end

      field :shoe_sizes

    end
  end
end
