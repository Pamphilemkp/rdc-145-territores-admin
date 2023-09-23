class AmbassadorsController < ApplicationController
  before_action :set_ambassador, only: %i[ show edit update destroy ]
  before_action :authenticate_devise_user!
  # GET /ambassadors or /ambassadors.json
  def index
    @ambassadors = Ambassador.all
  end

  # GET /ambassadors/1 or /ambassadors/1.json
  def show
  end

  # GET /ambassadors/new
  def new
    @ambassador = Ambassador.new
  end

  # GET /ambassadors/1/edit
  def edit
  end

  # POST /ambassadors or /ambassadors.json
  def create
    @ambassador = Ambassador.new(ambassador_params)

    respond_to do |format|
      if @ambassador.save
        AmbassadorMailer.send_confirmation_email(@ambassador).deliver_now
        format.html { redirect_to ambassador_url(@ambassador), notice: "Ambassador was successfully created." }
        format.json { render :show, status: :created, location: @ambassador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambassadors/1 or /ambassadors/1.json
  def update
    respond_to do |format|
      if @ambassador.update(ambassador_params)
        format.html { redirect_to ambassador_url(@ambassador), notice: "Ambassador was successfully updated." }
        format.json { render :show, status: :ok, location: @ambassador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ambassador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambassadors/1 or /ambassadors/1.json
  def destroy
    @ambassador.destroy

    respond_to do |format|
      format.html { redirect_to ambassadors_url, notice: "Ambassador was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def accept_application
    @ambassador = Ambassador.find(params[:id])
    @ambassador.update_columns(acceptance: true)
    
    if @ambassador.save  
      AmbassadorMailer.acceptance_email(@ambassador).deliver_now
      redirect_to ambassadors_path, notice: "#{@ambassador.first_name} - #{@ambassador.first_name} a ete accepté comme ambassadeur et nous lui avons deja envoye un email pour lui informer."
    else
      flash.now[:error] = @ambassador.errors.full_messages.join(", ")
      puts @ambassador.errors.full_messages # Check the console for error messages
      # ...
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambassador
      @ambassador = Ambassador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ambassador_params
      params.require(:ambassador).permit(:first_name, :last_name, :email, :phone, :address, :citizenship, :presentation, :position, :comment, :reason_of_choice, :territoire, :acceptance)
    end
end
