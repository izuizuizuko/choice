class HordeolumsController < ApplicationController
  before_action :set_hordeolum, only: [:show, :edit, :update, :destroy]

  # GET /hordeolums
  # GET /hordeolums.json
  def index
    @hordeolums = Hordeolum.all
  end

  # GET /hordeolums/1
  # GET /hordeolums/1.json
  def show
  end

  # GET /hordeolums/new
  def new
    @hordeolum = Hordeolum.new
  end

  # GET /hordeolums/1/edit
  def edit
  end

  # POST /hordeolums
  # POST /hordeolums.json
  def create
    @hordeolum = Hordeolum.new(hordeolum_params)

    respond_to do |format|
      if @hordeolum.save
        format.html { redirect_to @hordeolum, notice: 'Hordeolum was successfully created.' }
        format.json { render :show, status: :created, location: @hordeolum }
      else
        format.html { render :new }
        format.json { render json: @hordeolum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hordeolums/1
  # PATCH/PUT /hordeolums/1.json
  def update
    respond_to do |format|
      if @hordeolum.update(hordeolum_params)
        format.html { redirect_to @hordeolum, notice: 'Hordeolum was successfully updated.' }
        format.json { render :show, status: :ok, location: @hordeolum }
      else
        format.html { render :edit }
        format.json { render json: @hordeolum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hordeolums/1
  # DELETE /hordeolums/1.json
  def destroy
    @hordeolum.destroy
    respond_to do |format|
      format.html { redirect_to hordeolums_url, notice: 'Hordeolum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hordeolum
      @hordeolum = Hordeolum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hordeolum_params
      params.require(:hordeolum).permit(:name, :company, :rank, :point1, :pit1, :pit2, :pit3, :advice1, :advice2, :advice3, :picture, :hordeolum_images_attributes[:id,:image] )
    end
end
