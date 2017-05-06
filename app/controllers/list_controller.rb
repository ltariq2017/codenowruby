class ListController < ApplicationController
  def index
  end
  def show
    @list_name = 'Chores'
    @todo_descriptions = ['Sports', 'Songs', 'Music','Artists']
  end
end
