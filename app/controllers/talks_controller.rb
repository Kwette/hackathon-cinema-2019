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
    @talk.booker = 'L\'intervenant'
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
    @talk = Talk.find_by_id(params[:id])
    @talk.update(talk_params)
    redirect_to talk_path
  end

  def destroy
    @talk = Talk.find(params[:id])
    @talk.destroy
    redirect_to talks_path
  end

  def booking
    @talk = Talk.find_by_id(params[:format])
    @talk.statut = "confirm"
    @talk.save
    render 'talks/booking'
  end

  def bookingList
    @talks = Talk.all
    render 'talks/booking_list'
  end

  def bookingAccept
    @talk = Talk.find_by_id(params[:format])
    @talk.statut = "valid"
    @talk.save
    @talks = Talk.all()
    render 'talks/booking_list'
  end

  def bookingRefuse
    @talk = Talk.find_by_id(params[:format])
    @talk.statut = "refused"
    @talk.save
    @talks = Talk.all()
    render 'talks/booking_list'
  end

  def bookingAcceptList
    @talks = Talk.all
    render 'talks/booking_validated_list.html'
  end

  def bookingRefusedList
    @talks = Talk.all
    render 'talks/booking_refused_list.html'
  end

  def bookingCurrentList
    @talks = Talk.all
    render 'talks/booking_current_list'
  end

   private

  def talk_params
    params.require(:talk).permit(:film, :theme, :date, :statut)
  end
end
