class CatalogController < ApplicationController
  def item
    @item = Shoe.last
  end
end
