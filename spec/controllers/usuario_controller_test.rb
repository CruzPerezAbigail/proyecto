require "rails_helper"

RSpec.describe UsuariosController do 
  describe 'GET index' do 
    let(:usuarios) {create :usuarios}

    it 'assigns @usuario' do 
      sign_in(usuarios)
      get :index
      expect(assigns(:usuarios)).to eq([usuarios])
      expect(response).to render_template('index')
      expect(response).to have_http_status(:ok)
    end 
  end 
end 