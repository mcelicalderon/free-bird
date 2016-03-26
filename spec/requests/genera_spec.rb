require 'rails_helper'

RSpec.describe "Genera", type: :request do
  describe "GET /genera" do
    it "works! (now write some real specs)" do
      get genera_path
      expect(response).to have_http_status(200)
    end
  end
end
