require "rails_helper"

RSpec.describe SpeciesRecordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/species_records").to route_to("species_records#index")
    end

    it "routes to #new" do
      expect(:get => "/species_records/new").to route_to("species_records#new")
    end

    it "routes to #show" do
      expect(:get => "/species_records/1").to route_to("species_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/species_records/1/edit").to route_to("species_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/species_records").to route_to("species_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/species_records/1").to route_to("species_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/species_records/1").to route_to("species_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/species_records/1").to route_to("species_records#destroy", :id => "1")
    end

  end
end
