FactoryBot.define do
  factory :comment do
    user_id { 1 }
    publicacion_id { 1 }
    contenido { "MyText" }
  end
end
