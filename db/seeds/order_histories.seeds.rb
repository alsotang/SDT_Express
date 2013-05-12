after :orders do
  Order.all.each do |order|
    rand(1..5).times do |num|
      order.order_histories.create!(where_is: "到达地点 #{rand(10)}",
        time_point: Time.now + num * 1000)
    end
  end

end