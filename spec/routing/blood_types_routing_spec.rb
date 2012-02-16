require "spec_helper"

describe BloodTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/blood_types").should route_to("blood_types#index")
    end

    it "routes to #new" do
      get("/blood_types/new").should route_to("blood_types#new")
    end

    it "routes to #show" do
      get("/blood_types/1").should route_to("blood_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blood_types/1/edit").should route_to("blood_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blood_types").should route_to("blood_types#create")
    end

    it "routes to #update" do
      put("/blood_types/1").should route_to("blood_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blood_types/1").should route_to("blood_types#destroy", :id => "1")
    end

  end
end
