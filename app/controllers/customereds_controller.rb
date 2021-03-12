class CustomeredsController < ApplicationController
  before_action :set_customered, only: %i[show edit update destroy]

  # GET /customereds or /customereds.json
  def index
    @customereds = Customered.all
  end

  # GET /customereds/1 or /customereds/1.json
  def show; end

  # GET /customereds/new
  def new
    @customered = Customered.new
  end

  # GET /customereds/1/edit
  def edit; end

  # POST /customereds or /customereds.json
  def create
    @customered = Customered.new(customered_params)

    respond_to do |format|
      if @customered.save
        format.html { redirect_to @customered, notice: 'Customered was successfully created.' }
        format.json { render :show, status: :created, location: @customered }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customereds/1 or /customereds/1.json
  def update
    respond_to do |format|
      if @customered.update(customered_params)
        format.html { redirect_to @customered, notice: 'Customered was successfully updated.' }
        format.json { render :show, status: :ok, location: @customered }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customereds/1 or /customereds/1.json
  def destroy
    @customered.destroy
    respond_to do |format|
      format.html { redirect_to customereds_url, notice: 'Customered was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_customered
    @customered = Customered.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def customered_params
    params.require(:customered).permit(:id_card, :first_name, :last_name, :parent_id)
  end
end
