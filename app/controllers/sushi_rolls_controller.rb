class SushiRollsController < ApplicationController
  before_action :set_sushi_roll, only: [:show, :edit, :update, :destroy]

  # GET /sushi_rolls
  def index
    @sushi_rolls = SushiRoll.all
  end

  # GET /sushi_rolls/1
  def show
  end

  # GET /sushi_rolls/new
  def new
    @sushi_roll = SushiRoll.new
  end

  # GET /sushi_rolls/1/edit
  def edit
  end

  # POST /sushi_rolls
  def create
    @sushi_roll = SushiRoll.new(sushi_roll_params)

    if @sushi_roll.save
      redirect_to @sushi_roll, notice: 'Sushi roll was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /sushi_rolls/1
  def update
    if @sushi_roll.update(sushi_roll_params)
      redirect_to @sushi_roll, notice: 'Sushi roll was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /sushi_rolls/1
  def destroy
    @sushi_roll.destroy
    redirect_to sushi_rolls_url, notice: 'Sushi roll was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sushi_roll
      @sushi_roll = SushiRoll.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def sushi_roll_params
      params.require(:sushi_roll).permit(:name, :price, :description)
    end
end
