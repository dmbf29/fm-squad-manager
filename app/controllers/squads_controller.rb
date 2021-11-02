class SquadsController < ApplicationController
  before_action :set_squad, only: [:show, :edit, :update, :destroy]

  # GET /squads
  def index
    @squads = Squad.all
  end

  # GET /squads/1
  def show
  end

  # GET /squads/new
  def new
    @squad = Squad.new
  end

  # GET /squads/1/edit
  def edit
  end

  # POST /squads
  def create
    @squad = Squad.new(squad_params)

    if @squad.save
      redirect_to @squad, notice: 'Squad was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /squads/1
  def update
    if @squad.update(squad_params)
      redirect_to @squad, notice: 'Squad was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /squads/1
  def destroy
    @squad.destroy
    redirect_to squads_url, notice: 'Squad was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squad
      @squad = Squad.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def squad_params
      params.require(:squad).permit(:name, :user_id)
    end
end
