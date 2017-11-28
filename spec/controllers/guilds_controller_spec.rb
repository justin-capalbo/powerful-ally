require 'rails_helper'

RSpec.describe GuildsController, type: :controller do
  login_officer

  # This should return the minimal set of attributes required to create a valid
  # Guild. As you add validations to Guild, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: "FTB HeroicBootcamp",
      officer_id: @current_officer.id }
  }

  let(:invalid_attributes) {
    { name: "" }
  }

  describe "GET #index" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :index, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :show, params: {id: guild.to_param}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      guild = Guild.create! valid_attributes
      get :edit, params: {id: guild.to_param}
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Guild" do
        expect {
          post :create, params: {guild: valid_attributes}
        }.to change(Guild, :count).by(1)
      end

      it "redirects to the created guild" do
        post :create, params: {guild: valid_attributes}
        expect(response).to redirect_to(@current_officer.guilds.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {guild: invalid_attributes}
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
        put :update, params: {id: guild.to_param, guild: new_attributes}
        guild.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the guild" do
        guild = Guild.create! valid_attributes
        put :update, params: {id: guild.to_param, guild: valid_attributes}
        expect(response).to redirect_to(guild)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        guild = Guild.create! valid_attributes
        put :update, params: {id: guild.to_param, guild: invalid_attributes}
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested guild" do
      guild = Guild.create! valid_attributes
      expect {
        delete :destroy, params: {id: guild.id}
      }.to change(Guild, :count).by(-1)
    end

    it "redirects to the guilds list" do
      guild = Guild.create! valid_attributes
      delete :destroy, params: {id: guild.to_param}
      expect(response).to redirect_to(guilds_url)
    end
  end

end
