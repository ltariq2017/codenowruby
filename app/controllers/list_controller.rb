class ListController < ApplicationController
  def index
  end
  def show
    @list_name = 'Chores'
    @todo_descriptions = ['Sports', 'Songs', 'Music','Artists']
    @id = params['id']
    @list = List.find_by_id(@id)
    
    if @id == 1
      @first_todo_description = 'Study for math test'
      @first_todo_pomodoro_estimate = '30 minutes'
    elsif @id == 2
      @second_todo_description = 'Go to laundromat'
      @second_todo_pomodoro_estimate = '45 minutes'
    elsif @id == 3 
      @third_todo_description = ''
      @third_todo_pomodoro_estimate = '45 minutes'
    end
  end
  def new
  end
  def create
    @name = params['name']
    @list = List.new
    @list.name = @name
    @list.save
    
    redirect_to "/list/#{@list.id}"
  end
  def edit
    @id = params['id']
    @list = List.find_by_id(@id)  
  end
  def update
    @id = params['id']
    @list = List.find_by_id(@id)  
    @name = params['name']
    @list.name = @name
    @list.save
    redirect_to "/list/#{@list.id}"
  end
end