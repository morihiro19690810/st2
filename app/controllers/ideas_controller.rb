class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
    @questions = Question.all
  end
  def new
  @idea = Idea.new
  @questions = Question.all
  end
  def create
      @questions = Question.all
  @idea = Idea.new(idea_params)
  if @idea.save
    redirect_to root_path
  else
    render "new"
  end
  end
  
  def reload
    @ideas = Idea.all
  end
  
  private
  def idea_params
  params[:idea].permit(:item)
  end
end
