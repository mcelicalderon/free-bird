require 'rails_helper'

RSpec.describe "CensusDates", type: :request do
  describe "GET /census_dates" do
    it "works! (now write some real specs)" do
      get census_dates_path
      expect(response).to have_http_status(200)
    end
  end
end
