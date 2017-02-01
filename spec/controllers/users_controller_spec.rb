require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # User. As you add validations to User, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UsersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #show" do
    it "assigns the requested user as @user" do
      user = User.create! valid_attributes
      get :show, params: {id: user.to_param}, session: valid_session
      expect(assigns(:user)).to eq(user)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new User" do
        expect {
          post :create, params: {user: valid_attributes}, session: valid_session
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, params: {user: valid_attributes}, session: valid_session
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        post :create, params: {user: invalid_attributes}, session: valid_session
        expect(assigns(:user)).to be_a_new(User)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested user" do
        user = User.create! valid_attributes
        put :update, params: {id: user.to_param, user: new_attributes}, session: valid_session
        user.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested user as @user" do
        user = User.create! valid_attributes
        put :update, params: {id: user.to_param, user: valid_attributes}, session: valid_session
        expect(assigns(:user)).to eq(user)
      end
    end

    context "with invalid params" do
      it "assigns the user as @user" do
        user = User.create! valid_attributes
        put :update, params: {id: user.to_param, user: invalid_attributes}, session: valid_session
        expect(assigns(:user)).to eq(user)
      end
    end
  end

end
