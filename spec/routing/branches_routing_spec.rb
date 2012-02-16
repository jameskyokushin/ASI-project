require "spec_helper"

describe BranchesController do
  describe "routing" do

    it "routes to #index" do
      get("/branches").should route_to("branches#index")
    end

    it "routes to #new" do
      get("/branches/new").should route_to("branches#new")
    end

    it "routes to #show" do
      get("/branches/1").should route_to("branches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/branches/1/edit").should route_to("branches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/branches").should route_to("branches#create")
    end

    it "routes to #update" do
      put("/branches/1").should route_to("branches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/branches/1").should route_to("branches#destroy", :id => "1")
    end

  end
end
