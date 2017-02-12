class OwnersController < ApplicationController
  before_action :set_owner, only: [:show, :update]

  # GET /owners/1
  # GET /owners/1.json
  def show
  end

  # POST /owners
  # POST /owners.json
  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      render :show, status: :created, location: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/1
  # PATCH/PUT /owners/1.json
  def update
    if @owner.update(owner_params)
      render :show, status: :ok, location: @owner
    else
      render json: @owner.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def owner_params
      params.require(:owner).permit(:email, :name, :avatar)
    end
end
