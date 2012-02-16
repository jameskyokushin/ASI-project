require "spec_helper"

describe GendersController do
  describe "routing" do

    it "routes to #index" do
      get("/genders").should route_to("genders#index")
    end

    it "routes to #new" do
      get("/genders/new").should route_to("genders#new")
    end

    it "routes to #show" do
      get("/genders/1").should route_to("genders#show", :id => "1")
    end

    it "routes to #edit" do
      get("/genders/1/edit").should route_to("genders#edit", :id => "1")
    end

    it "routes to #create" do
      post("/genders").should route_to("genders#create")
    end

    it "routes to #update" do
      put("/genders/1").should route_to("genders#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/genders/1").should route_to("genders#destroy", :id => "1")
    end

  end
end
