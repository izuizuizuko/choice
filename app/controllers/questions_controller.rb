class QuestionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_question, only: [:show, :edit, :update, :destroy]
  @@user_type = nil
  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
    @q = Question.ransack(params[:q])
    if params[:q]
      @questions = @q.result(distinct: true)
    else
      @questions = Question.all
    end
    
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new 
    @tags = Tag.all
    @question = Question.new
    @questions = current_user.questions

  end

  # GET /questions/1/edit
  def edit
    @tags = Tag.all
    
  end

  # POST /questions
  # POST /questions.json
  def create
    @question = current_user.questions.build(question_params)
    respond_to do |format|
      if @question.save
        format.html {redirect_to @question, notice: 'Question was successfully created.'}
        format.json {render :show, status: :created, location: @question}
      else
        format.html {render :new}
        format.json {render json: @question.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    redirect_to "/questions"
    # respond_to do |format|
    #   if @question.update(question_params)
    #     format.html {redirect_to @question, notice: 'Question was successfully updated.'}
    #     format.json {render :show, status: :ok, location: @question}
    #   else
    #     format.html {render :edit}
    #     format.json {render json: @question.errors, status: :unprocessable_entity}
    #   end
    # end
  end
 

   
  def destroy
    @question.destroy
    redirect_to "/questions"
  end

  private
 
  def set_question
    @question = Question.find(params[:id])
  end
 
  def question_params
    params.require(:question).permit(:user_id, :title, :body, :best_answer_id, {:tag_ids => []})
  end
end