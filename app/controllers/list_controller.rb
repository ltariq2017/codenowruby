class ListController < ApplicationController
  def index
  end
  def show
    @list_name = ['Songs', 'Sports', 'Food'].sample
  end
end
