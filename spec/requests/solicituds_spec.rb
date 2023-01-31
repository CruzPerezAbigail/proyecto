require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/solicituds", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Solicitud. As you add validations to Solicitud, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Solicitud.create! valid_attributes
      get solicituds_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      solicitud = Solicitud.create! valid_attributes
      get solicitud_url(solicitud)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_solicitud_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      solicitud = Solicitud.create! valid_attributes
      get edit_solicitud_url(solicitud)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Solicitud" do
        expect {
          post solicituds_url, params: { solicitud: valid_attributes }
        }.to change(Solicitud, :count).by(1)
      end

      it "redirects to the created solicitud" do
        post solicituds_url, params: { solicitud: valid_attributes }
        expect(response).to redirect_to(solicitud_url(Solicitud.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Solicitud" do
        expect {
          post solicituds_url, params: { solicitud: invalid_attributes }
        }.to change(Solicitud, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post solicituds_url, params: { solicitud: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested solicitud" do
        solicitud = Solicitud.create! valid_attributes
        patch solicitud_url(solicitud), params: { solicitud: new_attributes }
        solicitud.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the solicitud" do
        solicitud = Solicitud.create! valid_attributes
        patch solicitud_url(solicitud), params: { solicitud: new_attributes }
        solicitud.reload
        expect(response).to redirect_to(solicitud_url(solicitud))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        solicitud = Solicitud.create! valid_attributes
        patch solicitud_url(solicitud), params: { solicitud: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested solicitud" do
      solicitud = Solicitud.create! valid_attributes
      expect {
        delete solicitud_url(solicitud)
      }.to change(Solicitud, :count).by(-1)
    end

    it "redirects to the solicituds list" do
      solicitud = Solicitud.create! valid_attributes
      delete solicitud_url(solicitud)
      expect(response).to redirect_to(solicituds_url)
    end
  end
end
