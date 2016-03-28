require "rails_helper"

RSpec.describe CensusDatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/census_dates").to route_to("census_dates#index")
    end

    it "routes to #new" do
      expect(:get => "/census_dates/new").to route_to("census_dates#new")
    end

    it "routes to #show" do
      expect(:get => "/census_dates/1").to route_to("census_dates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/census_dates/1/edit").to route_to("census_dates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/census_dates").to route_to("census_dates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/census_dates/1").to route_to("census_dates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/census_dates/1").to route_to("census_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/census_dates/1").to route_to("census_dates#destroy", :id => "1")
    end

  end
end
