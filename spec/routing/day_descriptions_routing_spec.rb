require "rails_helper"

RSpec.describe DayDescriptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/day_descriptions").to route_to("day_descriptions#index")
    end

    it "routes to #new" do
      expect(:get => "/day_descriptions/new").to route_to("day_descriptions#new")
    end

    it "routes to #show" do
      expect(:get => "/day_descriptions/1").to route_to("day_descriptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/day_descriptions/1/edit").to route_to("day_descriptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/day_descriptions").to route_to("day_descriptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/day_descriptions/1").to route_to("day_descriptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/day_descriptions/1").to route_to("day_descriptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/day_descriptions/1").to route_to("day_descriptions#destroy", :id => "1")
    end

  end
end
