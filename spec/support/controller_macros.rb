module ControllerMacros
  def login_officer(current_officer = FactoryBot.create(:officer))
    before :each do
      @request.env['devise.mapping'] = Devise.mappings[:officer]
      @current_officer = current_officer
      sign_in :officer, @current_officer
    end
  end
end
