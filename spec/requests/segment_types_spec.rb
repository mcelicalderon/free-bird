require 'rails_helper'

RSpec.describe "SegmentTypes", type: :request do
  describe "GET /segment_types" do
    it "works! (now write some real specs)" do
      get segment_types_path
      expect(response).to have_http_status(200)
    end
  end
end
