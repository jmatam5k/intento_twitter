class TweeeetsController < ApplicationController
  before_action :set_tweeeet, only: [:show, :edit, :update, :destroy]

  # GET /tweeeets
  # GET /tweeeets.json
  def index
    @tweeeets = Tweeeet.all
  end

  # GET /tweeeets/1
  # GET /tweeeets/1.json
  def show
  end

  # GET /tweeeets/new
  def new
    @tweeeet = Tweeeet.new
  end

  # GET /tweeeets/1/edit
  def edit
  end

  # POST /tweeeets
  # POST /tweeeets.json
  def create
    @tweeeet = Tweeeet.new(tweeeet_params)

    respond_to do |format|
      if @tweeeet.save
        format.html { redirect_to @tweeeet, notice: 'Tweeeet was successfully created.' }
        format.json { render :show, status: :created, location: @tweeeet }
      else
        format.html { render :new }
        format.json { render json: @tweeeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeeets/1
  # PATCH/PUT /tweeeets/1.json
  def update
    respond_to do |format|
      if @tweeeet.update(tweeeet_params)
        format.html { redirect_to @tweeeet, notice: 'Tweeeet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweeeet }
      else
        format.html { render :edit }
        format.json { render json: @tweeeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeeets/1
  # DELETE /tweeeets/1.json
  def destroy
    @tweeeet.destroy
    respond_to do |format|
      format.html { redirect_to tweeeets_url, notice: 'Tweeeet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweeeet
      @tweeeet = Tweeeet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tweeeet_params
      params.require(:tweeeet).permit(:tweeeet)
    end
end
