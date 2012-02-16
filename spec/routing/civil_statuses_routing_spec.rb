require "spec_helper"

describe CivilStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/civil_statuses").should route_to("civil_statuses#index")
    end

    it "routes to #new" do
      get("/civil_statuses/new").should route_to("civil_statuses#new")
    end

    it "routes to #show" do
      get("/civil_statuses/1").should route_to("civil_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/civil_statuses/1/edit").should route_to("civil_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/civil_statuses").should route_to("civil_statuses#create")
    end

    it "routes to #update" do
      put("/civil_statuses/1").should route_to("civil_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/civil_statuses/1").should route_to("civil_statuses#destroy", :id => "1")
    end

  end
end
