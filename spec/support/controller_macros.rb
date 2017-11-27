module ControllerMacros
  def login_officer
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:officer]
      officer = FactoryBot.create(:officer)
      sign_in officer
    end
  end
end
