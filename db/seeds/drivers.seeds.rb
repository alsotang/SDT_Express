10.times do |num|
  Driver.create!(
    name: "快递员司机 %d" % num,
    vehicle_type: num * 7 % 3,
    vehicle_status: num * 5 % 2,
    current_loc: "城市 %d" % num
    )
end