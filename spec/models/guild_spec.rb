require 'rails_helper'

RSpec.describe Guild, type: :model do
  it "has a valid factory" do
    # Shorthand FactoryBot syntax
    # Requires "config.include FactoryBot::Syntax::Methods" in rails_helper or spec_helper
    expect(build(:guild)).to be_valid
  end
end
