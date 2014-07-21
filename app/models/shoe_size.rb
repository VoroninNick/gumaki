#encoding: utf-8

class ShoeSize < ActiveRecord::Base
  has_and_belongs_to_many :shoes

  attr_accessible :size_number, :size_in_mm, :shoes, :male, :female


  #translates :name, :short_description, :full_description
  #accepts_nested_attributes_for :translations
  #attr_accessible :translations_attributes, :translations

  #class Translation
  #  attr_accessible :locale, :intro_text, :description, :address
  #end


  rails_admin do
    edit do
      field :male do
        label 'Чоловічі'
      end

      field :female do
        label 'Жіночі'
      end

      field :size_number do
        label 'Розмір '
      end

      field :size_in_mm do
        label 'Розмір у міліметрах'
      end

      field :shoes do
        label 'сапоги'
      end

    end
  end
end
