require 'rails_helper'

RSpec.describe "DayDescriptions", type: :request do
  describe "GET /day_descriptions" do
    it "works! (now write some real specs)" do
      get day_descriptions_path
      expect(response).to have_http_status(200)
    end
  end
end
