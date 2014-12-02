class ProgrammersController < ApplicationController
  before_action :set_programmer, only: [:show, :edit, :update, :destroy]

  # GET /programmers
  # GET /programmers.json
  def index
    @programmers = Programmer.all
  end

  # GET /programmers/1
  # GET /programmers/1.json
  def show
  end

  # GET /programmers/new
  def new
    @programmer = Programmer.new
  end

  # GET /programmers/1/edit
  def edit
  end

  # POST /programmers
  # POST /programmers.json
  def create
    @programmer = Programmer.new(programmer_params)

    respond_to do |format|
      if @programmer.save
        format.html { redirect_to @programmer, notice: 'Programmer was successfully created.' }
        format.json { render :show, status: :created, location: @programmer }
      else
        format.html { render :new }
        format.json { render json: @programmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programmers/1
  # PATCH/PUT /programmers/1.json
  def update
    respond_to do |format|
      if @programmer.update(programmer_params)
        format.html { redirect_to @programmer, notice: 'Programmer was successfully updated.' }
        format.json { render :show, status: :ok, location: @programmer }
      else
        format.html { render :edit }
        format.json { render json: @programmer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programmers/1
  # DELETE /programmers/1.json
  def destroy
    @programmer.destroy
    respond_to do |format|
      format.html { redirect_to programmers_url, notice: 'Programmer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programmer
      @programmer = Programmer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programmer_params
      params.require(:programmer).permit(:name, :email)
    end
end
