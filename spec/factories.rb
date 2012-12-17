FactoryGirl.define do
  factory :user do
    name     "Marvin Ahlgrimm"
    email    "m.j.ahlgrimm@gmx.de"
    password "foobar"
    password_confirmation "foobar"
  end
end