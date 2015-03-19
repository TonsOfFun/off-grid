FactoryGirl.define do
  factory :project do
    zoho_id { Faker::Number.number(10) }
		name { Faker::Name.name }
		amount { Faker::Commerce.price }
		zoho_account_id { Faker::Number.number(10) }
		stage { Faker::Name.name }
		project_type { Faker::Name.name }
		probability { Faker::Commerce.price }
		next_step { Faker::Name.name }
		created_at { Time.now }
		updated_at { Time.now }
		description { Faker::Lorem.paragraph }
		expected_revenue { Faker::Commerce.price }
		system_type { Faker::Name.name }
		battery_type { Faker::Name.name }
		service_area { Faker::Name.name }
  end
end
