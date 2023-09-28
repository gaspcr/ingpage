# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'index' do
    it 'returns http success' do
      get '/pages/index'
      expect(response).to have_http_status(:ok)
    end

    it 'renders index view' do
      get '/pages/index'
      expect(response).to render_template(:index)
    end
  end
end
