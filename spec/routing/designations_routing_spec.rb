require "spec_helper"

describe DesignationsController do
  describe "routing" do

    it "routes to #index" do
      get("/designations").should route_to("designations#index")
    end

    it "routes to #new" do
      get("/designations/new").should route_to("designations#new")
    end

    it "routes to #show" do
      get("/designations/1").should route_to("designations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/designations/1/edit").should route_to("designations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/designations").should route_to("designations#create")
    end

    it "routes to #update" do
      put("/designations/1").should route_to("designations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/designations/1").should route_to("designations#destroy", :id => "1")
    end

  end
end
