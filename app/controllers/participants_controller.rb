class ParticipantsController < ApplicationController
  before_action :set_participant, only: %i[ show edit update destroy ]
  before_action :set_option_list, only: [:new, :edit]

  # GET /participants or /participants.json
  def index
    @participants = Participant.all
  end

  # GET /participants/1 or /participants/1.json
  def show
  end

  # GET /participants/new
  def new
    @optionList = [
      {value: "Haut-Katanga", label: "Haut-Katanga"},
      {value: "Kinshasa", label: "Kinshasa"},
      {value: "Kongo Central", label: "Kongo Central"},
      {value: "Kwango", label: "Kwango"},
      {value: "Kwilu", label: "Kwilu"},
      {value: "Mai-Ndombe", label: "Mai-Ndombe"},
      {value: "Kasaï", label: "Kasaï"},
      {value: "Kasaï-Central", label: "Kasaï-Central"},
      {value: "Kasaï-Oriental", label: "Kasaï-Oriental"},
      {value: "Lomami", label: "Lomami"},
      {value: "Sankuru", label: "Sankuru"},
      {value: "Maniema", label: "Maniema"},
      {value: "Sud Kivu", label: "Sud Kivu"},
      {value: "Nord Kivu", label: "Nord Kivu"},
      {value: "Ituri", label: "Ituri"},
      {value: "Haut-Uele", label: "Haut-Uele"},
      {value: "Tshopo", label: "Tshopo"},
      {value: "Bas-Uele", label: "Bas-Uele"},
      {value: "Nord-Ubangi", label: "Nord-Ubangi"},
      {value: "Mongala", label: "Mongala"},
      {value: "Sud-Ubangi", label: "Sud-Ubangi"},
      {value: "Équateur", label: "Équateur"},
      {value: "Tshuapa", label: "Tshuapa"},
      {value: "Tanganyika", label: "Tanganyika"},
      {value: "Haut-Lomami", label: "Haut-Lomami"},
      {value: "Lualaba", label: "Lualaba"},
  
  ]

  puts "@optionList: #{@optionList.inspect}"
    @participant = Participant.new
  end

  # GET /participants/1/edit
  def edit
  end

  # POST /participants or /participants.json
  def create
    @participant = Participant.new(participant_params)

    respond_to do |format|
      if @participant.save
        format.html { redirect_to participant_url(@participant), notice: "Participant was successfully created." }
        format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participants/1 or /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to participant_url(@participant), notice: "Participant was successfully updated." }
        format.json { render :show, status: :ok, location: @participant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1 or /participants/1.json
  def destroy
    @participant.destroy

    respond_to do |format|
      format.html { redirect_to participants_url, notice: "Participant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def participant_params
      params.require(:participant).permit(
        :first_name, :last_name, :address, :proffession, :investment_idea,
        :impact_of_idea, :proffessional_experience, :summary_of_project, 
        :email, :country_of_residence, :phone, :receipt,
        sector_of_investment: [:value, :label],
        province_of_interest: [:value, :label]
      )
    end

    
  def set_option_list
    @optionList = [
      {value: "Haut-Katanga", label: "Haut-Katanga"},
      {value: "Kinshasa", label: "Kinshasa"},
      {value: "Kongo Central", label: "Kongo Central"},
      {value: "Kwango", label: "Kwango"},
      {value: "Kwilu", label: "Kwilu"},
      {value: "Mai-Ndombe", label: "Mai-Ndombe"},
      {value: "Kasaï", label: "Kasaï"},
      {value: "Kasaï-Central", label: "Kasaï-Central"},
      {value: "Kasaï-Oriental", label: "Kasaï-Oriental"},
      {value: "Lomami", label: "Lomami"},
      {value: "Sankuru", label: "Sankuru"},
      {value: "Maniema", label: "Maniema"},
      {value: "Sud Kivu", label: "Sud Kivu"},
      {value: "Nord Kivu", label: "Nord Kivu"},
      {value: "Ituri", label: "Ituri"},
      {value: "Haut-Uele", label: "Haut-Uele"},
      {value: "Tshopo", label: "Tshopo"},
      {value: "Bas-Uele", label: "Bas-Uele"},
      {value: "Nord-Ubangi", label: "Nord-Ubangi"},
      {value: "Mongala", label: "Mongala"},
      {value: "Sud-Ubangi", label: "Sud-Ubangi"},
      {value: "Équateur", label: "Équateur"},
      {value: "Tshuapa", label: "Tshuapa"},
      {value: "Tanganyika", label: "Tanganyika"},
      {value: "Haut-Lomami", label: "Haut-Lomami"},
      {value: "Lualaba", label: "Lualaba"},
  
  ]
  end
end
