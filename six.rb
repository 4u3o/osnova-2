storage = Hash.new

loop do
  puts "Введите название товара (команду 'стоп', чтобы закончить ввод)"
  product = gets.chomp
  break if product == "стоп"

  puts "Введите цену за еденицу товара"
  price = gets.chomp.to_i

  puts "Введите кол-во купленного товара"
  count = gets.chomp.to_i

  storage[product] = {price: price, count: count}
end

sum = 0

storage.each do |product, data|
  current_sum = data[:price] * data[:count]
  sum += current_sum
  puts "#{product} => #{data} = #{current_sum}руб."
end

puts "Итого: #{sum}руб."
