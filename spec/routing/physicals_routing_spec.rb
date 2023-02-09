require "rails_helper"

RSpec.describe PhysicalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/physicals").to route_to("physicals#index")
    end

    it "routes to #new" do
      expect(get: "/physicals/new").to route_to("physicals#new")
    end

    it "routes to #show" do
      expect(get: "/physicals/1").to route_to("physicals#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/physicals/1/edit").to route_to("physicals#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/physicals").to route_to("physicals#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/physicals/1").to route_to("physicals#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/physicals/1").to route_to("physicals#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/physicals/1").to route_to("physicals#destroy", id: "1")
    end
  end
end
