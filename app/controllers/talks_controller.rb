class TalksController < ApplicationController
def index
   @talks = Talk.all
  end

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    @talk.user_id = current_user.id
    if @talk.save
      redirect_to talk_path(@talk)
    else
      render :new
    end
  end

  def show
    @talk = Talk.find(params[:id])
  end

  def edit
    @talk = Talk.find(params[:id])
  end

  def update
    @talk = Talk.find(params[:id])
    @talk.update(talk_params)
    redirect_to talk_path
  end

  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy
    redirect_to talks_path
  end

   private

  def talk_params
    params.require(:talk).permit(:film, :theme, :date, :statut)
  end
end
