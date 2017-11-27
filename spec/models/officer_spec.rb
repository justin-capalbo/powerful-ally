require 'spec_helper'

RSpec.describe Officer, type: :model do
  
  it "has a valid factory" do
    expect(build(:officer)).to be_valid
  end

end
