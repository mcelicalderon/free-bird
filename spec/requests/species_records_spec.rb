require 'rails_helper'

RSpec.describe "SpeciesRecords", type: :request do
  describe "GET /species_records" do
    it "works! (now write some real specs)" do
      get species_records_path
      expect(response).to have_http_status(200)
    end
  end
end
