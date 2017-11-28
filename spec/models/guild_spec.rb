require 'rails_helper'

RSpec.describe Guild, type: :model do

  it "has a valid factory" do
    # Shorthand FactoryBot syntax
    # Requires "config.include FactoryBot::Syntax::Methods" in rails_helper or spec_helper
    expect(build(:guild)).to be_valid
  end

  # Basic validations
  describe "ActiveModel validations" do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(36) }

    it { should validate_presence_of(:officer_id) }
  end

  # Associations
  describe "ActiveRecord associations" do
    it { should belong_to(:officer) }
  end

end
