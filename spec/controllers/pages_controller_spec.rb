require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  login_officer

  describe "GET #home" do
    it "returns a success response" do
      get :home
      expect(response).to be_success
    end

    context "rendering views" do
      render_views

      it "renders the landing page when not logged in" do
        sign_out @current_officer
        get :home
        expect(response).to render_template(partial: "_home_logged_out")
      end

      it "renders the signed in page when logged in" do
        get :home
        expect(response).to render_template(partial: "_home_logged_in.html.erb")
      end
    end
  end

end
