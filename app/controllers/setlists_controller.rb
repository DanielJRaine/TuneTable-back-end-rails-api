class SetlistsController < ApplicationController
  before_action :set_setlist, only: [:show, :update, :destroy]

  # GET /setlists
  # GET /setlists.json
  def index
    @setlists = Setlist.all

    render json: @setlists
  end

  # GET /setlists/1
  # GET /setlists/1.json
  def show
    render json: @setlist
  end

  # POST /setlists
  # POST /setlists.json
  def create
    @setlist = Setlist.new(setlist_params)

    if @setlist.save
      render json: @setlist, status: :created, location: @setlist
    else
      render json: @setlist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /setlists/1
  # PATCH/PUT /setlists/1.json
  def update
    @setlist = Setlist.find(params[:id])

    if @setlist.update(setlist_params)
      head :no_content
    else
      render json: @setlist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /setlists/1
  # DELETE /setlists/1.json
  def destroy
    @setlist.destroy

    head :no_content
  end

  private

    def set_setlist
      @setlist = Setlist.find(params[:id])
    end

    def setlist_params
      params.require(:setlist).permit(:name, :description, :user_id, :tune_id)
    end
end
