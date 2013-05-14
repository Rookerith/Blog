require "spec_helper"

describe Test123sController do
  describe "routing" do

    it "routes to #index" do
      get("/test123s").should route_to("test123s#index")
    end

    it "routes to #new" do
      get("/test123s/new").should route_to("test123s#new")
    end

    it "routes to #show" do
      get("/test123s/1").should route_to("test123s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/test123s/1/edit").should route_to("test123s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/test123s").should route_to("test123s#create")
    end

    it "routes to #update" do
      put("/test123s/1").should route_to("test123s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/test123s/1").should route_to("test123s#destroy", :id => "1")
    end

  end
end
