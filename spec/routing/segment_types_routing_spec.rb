require "rails_helper"

RSpec.describe SegmentTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/segment_types").to route_to("segment_types#index")
    end

    it "routes to #new" do
      expect(:get => "/segment_types/new").to route_to("segment_types#new")
    end

    it "routes to #show" do
      expect(:get => "/segment_types/1").to route_to("segment_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/segment_types/1/edit").to route_to("segment_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/segment_types").to route_to("segment_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/segment_types/1").to route_to("segment_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/segment_types/1").to route_to("segment_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/segment_types/1").to route_to("segment_types#destroy", :id => "1")
    end

  end
end
