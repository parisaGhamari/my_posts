class PpostsController < ApplicationController
  before_action :set_ppost, only: %i[ show edit update destroy ]

  # GET /pposts or /pposts.json
  def index
    @pposts = Ppost.all
  end

  # GET /pposts/1 or /pposts/1.json
  def show
  end

  # GET /pposts/new
  def new
    @ppost = Ppost.new
  end

  # GET /pposts/1/edit
  def edit
  end

  # POST /pposts or /pposts.json
  def create
    @ppost = Ppost.new(ppost_params)

    respond_to do |format|
      if @ppost.save
        format.html { redirect_to ppost_url(@ppost), notice: "Ppost was successfully created." }
        format.json { render :show, status: :created, location: @ppost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pposts/1 or /pposts/1.json
  def update
    respond_to do |format|
      if @ppost.update(ppost_params)
        format.html { redirect_to ppost_url(@ppost), notice: "Ppost was successfully updated." }
        format.json { render :show, status: :ok, location: @ppost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ppost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pposts/1 or /pposts/1.json
  def destroy
    @ppost.destroy!

    respond_to do |format|
      format.html { redirect_to pposts_url, notice: "Ppost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ppost
      @ppost = Ppost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ppost_params
      params.require(:ppost).permit(:name, :title, :body)
    end
end
