require "rails_helper"

RSpec.describe SushiRollsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sushi_rolls").to route_to("sushi_rolls#index")
    end

    it "routes to #new" do
      expect(:get => "/sushi_rolls/new").to route_to("sushi_rolls#new")
    end

    it "routes to #show" do
      expect(:get => "/sushi_rolls/1").to route_to("sushi_rolls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sushi_rolls/1/edit").to route_to("sushi_rolls#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sushi_rolls").to route_to("sushi_rolls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/sushi_rolls/1").to route_to("sushi_rolls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/sushi_rolls/1").to route_to("sushi_rolls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sushi_rolls/1").to route_to("sushi_rolls#destroy", :id => "1")
    end

  end
end
