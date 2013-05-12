10.times do |num|
  num_index = num + 1
  Order.create!(start_loc: "起始地点 %d" % num_index,
    end_loc: "目标地点 #{num_index + 5}",
    price: rand(1..20),
    is_done: rand(2))
end