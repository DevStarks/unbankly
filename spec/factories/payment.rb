FactoryBot.define do
  factory :payment do
    amount { (rand * rand(1000)).round(2) }
    status 'unpaid'

    loan
  end
end
