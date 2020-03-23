class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_answer, only: [:show, :edit, :update, :destroy]
  
  def create
    answer = Answer.create(answer_params)
    redirect_to "/questions/#{answer.question.id}" 
  end
  

  def index
    # @questions = Question.all
    # @q = Question.ransack(params[:q])
    # if params[:q]
    #   @questions = @q.result(distinct: true)
    # else
    #   @questions = Question.all
    # end
  end

  def new
    @@question_id = params[:questionId]
    @question = Question.find(@@question_id)
    @answer = Answer.new
  end
 
  def edit
  end
 
  def show
    @question = Question.find(@@question_id)
    @answer.question_id = @@question_id
    @answer.user_id = current_user.id
  end
 
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def destroy
    @answer = Answer.find(params[:id])
    if @answer.destroy
      render :index 
    end
  end
 
  private
    def answer_params
      params.require(:answer).permit(:body).merge(user_id: current_user.id, question_id: params[:question_id])
    end
  
end