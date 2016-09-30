class TunesController < ApplicationController
  before_action :set_tune, only: [:show, :update, :destroy]

  # GET /tunes
  # GET /tunes.json
  def index
    @tunes = Tune.all

    render json: @tunes
  end

  # GET /tunes/1
  # GET /tunes/1.json
  def show
    render json: @tune
  end

  # POST /tunes
  # POST /tunes.json
  def create
    @tune = Tune.new(tune_params)

    if @tune.save
      render json: @tune, status: :created, location: @tune
    else
      render json: @tune.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tunes/1
  # PATCH/PUT /tunes/1.json
  def update
    @tune_id = JSON.parse(response.body)
    @tune = Tune.find(params[:id])

    if @tune.update(tune_params)
      head :no_content
    else
      render json: @tune.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tunes/1
  # DELETE /tunes/1.json
  def destroy
    @tune.destroy

    head :no_content
  end

  private

  def set_tune
    @tune = Tune.find(params[:id])
  end

  def tune_params
    params.require(:tune_data).permit(:name, :ABCnotation)
  end
end
