require 'rails_helper'

RSpec.describe "Owners", type: :request do
  describe "GET /owners" do
    it "works! (now write some real specs)" do
      get owners_path
      expect(response).to have_http_status(200)
    end
  end
end
