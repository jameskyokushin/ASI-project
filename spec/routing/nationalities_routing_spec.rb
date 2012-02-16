require "spec_helper"

describe NationalitiesController do
  describe "routing" do

    it "routes to #index" do
      get("/nationalities").should route_to("nationalities#index")
    end

    it "routes to #new" do
      get("/nationalities/new").should route_to("nationalities#new")
    end

    it "routes to #show" do
      get("/nationalities/1").should route_to("nationalities#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nationalities/1/edit").should route_to("nationalities#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nationalities").should route_to("nationalities#create")
    end

    it "routes to #update" do
      put("/nationalities/1").should route_to("nationalities#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nationalities/1").should route_to("nationalities#destroy", :id => "1")
    end

  end
end
