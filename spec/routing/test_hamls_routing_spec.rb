require "spec_helper"

describe TestHamlsController do
  describe "routing" do

    it "routes to #index" do
      get("/test_hamls").should route_to("test_hamls#index")
    end

    it "routes to #new" do
      get("/test_hamls/new").should route_to("test_hamls#new")
    end

    it "routes to #show" do
      get("/test_hamls/1").should route_to("test_hamls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/test_hamls/1/edit").should route_to("test_hamls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/test_hamls").should route_to("test_hamls#create")
    end

    it "routes to #update" do
      put("/test_hamls/1").should route_to("test_hamls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/test_hamls/1").should route_to("test_hamls#destroy", :id => "1")
    end

  end
end
