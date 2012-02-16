require "spec_helper"

describe ReligionsController do
  describe "routing" do

    it "routes to #index" do
      get("/religions").should route_to("religions#index")
    end

    it "routes to #new" do
      get("/religions/new").should route_to("religions#new")
    end

    it "routes to #show" do
      get("/religions/1").should route_to("religions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/religions/1/edit").should route_to("religions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/religions").should route_to("religions#create")
    end

    it "routes to #update" do
      put("/religions/1").should route_to("religions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/religions/1").should route_to("religions#destroy", :id => "1")
    end

  end
end
