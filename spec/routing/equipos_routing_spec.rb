require "rails_helper"

RSpec.describe EquiposController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/equipos").to route_to("equipos#index")
    end

    it "routes to #new" do
      expect(get: "/equipos/new").to route_to("equipos#new")
    end

    it "routes to #show" do
      expect(get: "/equipos/1").to route_to("equipos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/equipos/1/edit").to route_to("equipos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/equipos").to route_to("equipos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/equipos/1").to route_to("equipos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/equipos/1").to route_to("equipos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/equipos/1").to route_to("equipos#destroy", id: "1")
    end
  end
end
