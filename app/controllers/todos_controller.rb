class TodosController < ApplicationController
  def index
    @todos = Todo.all 
    render "index.json.jbuilder"
    # render json: Todo.all
  end

  def show
    @todo = Todo.find_by(id: params[:id])
    render "show.json.jbuilder" 
  end
end

