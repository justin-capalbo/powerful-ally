require 'rails_helper'

RSpec.describe Officer, type: :model do

  describe 'initialization' do
    it 'initializes a new officer' do
      # this is a dumb test but i wanted to have at least one test that runs
      officer = Officer.new

      expect(officer).to_not be_nil
    end
  end
end
