FactoryBot.define do
  factory :officer do
    email        { Faker::Internet.safe_email }
    password     "password"

    # Generic single guild 
    factory :officer_with_guild do
      after(:create) do |officer|
        create(:guild, officer: officer)
      end
    end

    # Generic single guild with members
    factory :officer_with_members do
      after(:create) do |officer|
        create(:guild_with_members, officer: officer)
      end
    end
  end
  
end
