require "rails_helper"

RSpec.describe OwnersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/owners").to route_to("owners#index")
    end

    it "routes to #new" do
      expect(:get => "/owners/new").to route_to("owners#new")
    end

    it "routes to #show" do
      expect(:get => "/owners/1").to route_to("owners#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/owners/1/edit").to route_to("owners#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/owners").to route_to("owners#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/owners/1").to route_to("owners#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/owners/1").to route_to("owners#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/owners/1").to route_to("owners#destroy", :id => "1")
    end

  end
end
