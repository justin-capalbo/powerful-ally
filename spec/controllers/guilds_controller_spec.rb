require 'rails_helper'

RSpec.describe GuildsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Guild. As you add validations to Guild, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "FTB HeroicBootcamp", 
      officer: create(:officer) }
  }

  let(:invalid_attributes) {
    { name: "" }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GuildsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :show, params: {id: guild.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :edit, params: {id: guild.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Guild" do
        expect {
          post :create, params: {guild: valid_attributes}, session: valid_session
        }.to change(Guild, :count).by(1)
      end

      it "redirects to the created guild" do
        post :create, params: {guild: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Guild.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {guild: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested guild" do
        guild = Guild.create! valid_attributes
        put :update, params: {id: guild.to_param, guild: new_attributes}, session: valid_session
        guild.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the guild" do
        guild = Guild.create! valid_attributes
        put :update, params: {id: guild.to_param, guild: valid_attributes}, session: valid_session
        expect(response).to redirect_to(guild)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        guild = Guild.create! valid_attributes
        put :update, params: {id: guild.to_param, guild: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested guild" do
      guild = Guild.create! valid_attributes
      expect {
        delete :destroy, params: {id: guild.to_param}, session: valid_session
      }.to change(Guild, :count).by(-1)
    end

    it "redirects to the guilds list" do
      guild = Guild.create! valid_attributes
      delete :destroy, params: {id: guild.to_param}, session: valid_session
      expect(response).to redirect_to(guilds_url)
    end
  end

end
