class SquadsController < ApplicationController
  before_action :set_squad, only: [:show, :edit, :update, :destroy]

  def index
    @squads = policy_scope(Squad)
  end

  def show
  end

  def new
    @squad = Squad.new
    authorize @squad
  end

  def edit
  end

  def create
    @squad = Squad.new(squad_params)
    @squad.user = current_user
    authorize @squad
    if @squad.save
      redirect_to @squad, notice: 'Squad was successfully created.'
    else
      render :new
    end
  end

  def update
    if @squad.update(squad_params)
      redirect_to @squad, notice: 'Squad was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @squad.destroy
    redirect_to squads_url, notice: 'Squad was successfully destroyed.'
  end

  private
  def set_squad
    @squad = Squad.find(params[:id])
    authorize @squad
  end

  def squad_params
    params.require(:squad).permit(:name, :user_id)
  end
end
