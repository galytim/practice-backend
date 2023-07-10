1000.times do |i|
    init_cost = ((i+1) * (rand(50.0..100.0)) - (rand(1.0..10.0))) * 100
    regulatory_term = rand(1..10)
    
    MainlyFacility.create(
      "name" => "Оборудование #{i+1}",
      "code" => "EQP00#{i+1}",
      "initCost" => init_cost,
      "dateStartUsing" => Date.today + i,
      "dateEndUsing" => Date.today + i + 10,
      "codeEndUsing" => i+1,
      "regulatoryTermServices" => regulatory_term
    )
  end
  
# Добавьте другие объекты Equipment, если необходимо
