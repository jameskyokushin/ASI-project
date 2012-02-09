require "spec_helper"

describe ProvincesController do
  describe "routing" do

    it "routes to #index" do
      get("/provinces").should route_to("provinces#index")
    end

    it "routes to #new" do
      get("/provinces/new").should route_to("provinces#new")
    end

    it "routes to #show" do
      get("/provinces/1").should route_to("provinces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/provinces/1/edit").should route_to("provinces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/provinces").should route_to("provinces#create")
    end

    it "routes to #update" do
      put("/provinces/1").should route_to("provinces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/provinces/1").should route_to("provinces#destroy", :id => "1")
    end

  end
end
