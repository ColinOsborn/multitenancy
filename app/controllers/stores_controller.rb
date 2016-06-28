class StoresController < ApplicationController
  def index
    @stores = Store.all
  end

  def show
    @store = Store.find_by(slug: params[:store_slug])
    # still need to keep in mind edge cases
    # must validate name is unique
  end
end
