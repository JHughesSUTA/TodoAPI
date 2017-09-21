class TodosController < ApplicationController
  def index
    @todos = Todo.all 
    render "index.json.jbuilder"
    # render json: Todo.all
  end

  def create
    @todo = Todo.new(
      text: params[:text],
      is_completed: params[:is_completed]
    )
    if @todo.save
      render "show.json.jbuilder"
    else
      render json: { errors: @todo.errors.full_messages }, status: 422
    end
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render "show.json.jbuilder" 
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    @todo.text = params[:text] || @todo.text
    @todo.is_completed = params[:is_completed] || @todo.is_completed
    @todo.save
    render "show.json.jbuilder"
  end
end

