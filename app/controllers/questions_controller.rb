class QuestionsController < ApplicationController
  def index
    @question = Question.new
    @questions = Question.all
  end
  def create
  @question = Question.new(question_params)
  if @question.save
    redirect_to questions_path
  else
    render "new"
  end
  end
    def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
    end
    
    def toggle
    head :no_content
    # 一度全てfalseにしてから、選択されたものだけ論理反転
    # @questions = Question.all
    # @questions.ask = false
    # @questions.save
    # 上記ではダメ、下記にしたらOKになった。
    Question.update_all(ask: false)
    
    @question = Question.find(params[:id])
    @question.ask = !@question.ask
    @question.save
    end
    
    def restart
    Idea.delete_all
    redirect_to root_path
    end
  
  private
  def question_params
  params[:question].permit(:item)
  end
end
