FactoryBot.define do
  factory :officer do
    email        { Faker::Internet.safe_email }
    password     "password"

    # Generic single guild
    factory :officer_with_no_members do
      after(:create) do |officer|
        create(:guild_with_no_members, officer: officer)
      end
    end
  end
  
end
