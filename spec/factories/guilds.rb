FactoryBot.define do
  factory :guild do
    name { Faker::Lorem.word }
    officer { create(:officer) }

    factory :guild_with_members do
      after(:create) do |guild|

      end
    end
  end
end
