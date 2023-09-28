FactoryBot.define do
  factory :review do
    from_id { 1 }
    to_id { 1 }
    evaluacion { 1 }
    comentario { "MyText" }
  end
end
