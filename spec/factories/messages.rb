FactoryBot.define do
  factory :message do
    from_id { 1 }
    to_id { 1 }
    contenido { "MyText" }
  end
end
