class UsersController < ApplicationController
  before_action :set_user, except: [:create]
  before_action :authenticate_request, only: [:update]

  # GET /users/1.json
  def show
  end

  # POST /users.json
  def create
    @user = User.new(register_params)

    if @user.save
      render :show, status: :created,
                    location: @user
    else
      render json: { error: @user.errors }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1.json
  def update
    authorize @user
    if @current_user.update(user_params)
      render :show, status: :ok, location: @current_user
    else
      render json: { error: @current_user.errors }, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = User.find params[:id]
  end

  def user_params
    params.require(:user).permit(:email, :name, :avatar)
  end

  def register_params
    params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end
end
