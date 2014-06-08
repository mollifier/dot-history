require 'rails_helper'

describe WelcomeController, :type => :controller do

  describe 'GET #index' do
    it 'renders the :index temmplate' do
      get :index
      expect(response).to render_template :index
    end
  end
end
