module ControllerMacros
  def login_officer
    before :each do
      @request.env['devise.mapping'] = Devise.mappings[:officer]
      @current_officer = FactoryBot.create(:officer)
      sign_in @current_officer, scope: :officer
    end
  end
end
