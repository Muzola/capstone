FactoryBot.define do
  factory :user do
    sequence :email do |n|
       "dummyEmail#{n}@gmail.com" 
    end
    password { "secretPassword" }
    password_confirmation { "secretPassword" }
  end

  factory :product do
    title {"hello"}
    description {"test"}
    cost {30}
    stock {2}
    association :user
  end

  factory :purchase_product do
    title {"hello"}
    description {"test"}
    cost {30}
    stock {2}
    shipping {1}
    image {'img.jpg'}
  end

end

