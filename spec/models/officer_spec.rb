require 'rails_helper'

RSpec.describe Officer, type: :model do

  # Factory validation
  it "has a valid factory" do
    expect(build(:officer)).to be_valid
  end

end
