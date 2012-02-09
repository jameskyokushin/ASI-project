require "spec_helper"

describe LeadsController do
  describe "routing" do

    it "routes to #index" do
      get("/leads").should route_to("leads#index")
    end

    it "routes to #new" do
      get("/leads/new").should route_to("leads#new")
    end

    it "routes to #show" do
      get("/leads/1").should route_to("leads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/leads/1/edit").should route_to("leads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/leads").should route_to("leads#create")
    end

    it "routes to #update" do
      put("/leads/1").should route_to("leads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/leads/1").should route_to("leads#destroy", :id => "1")
    end

  end
end
