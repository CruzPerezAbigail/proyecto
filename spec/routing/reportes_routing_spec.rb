require "rails_helper"

RSpec.describe ReportesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/reportes").to route_to("reportes#index")
    end

    it "routes to #new" do
      expect(get: "/reportes/new").to route_to("reportes#new")
    end

    it "routes to #show" do
      expect(get: "/reportes/1").to route_to("reportes#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/reportes/1/edit").to route_to("reportes#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/reportes").to route_to("reportes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/reportes/1").to route_to("reportes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/reportes/1").to route_to("reportes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/reportes/1").to route_to("reportes#destroy", id: "1")
    end
  end
end
