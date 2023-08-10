months = {
  january: 31,
  february: 28,
  march: 31,
  april: 30,
  may: 31,
  june: 30,
  july: 31,
  august: 31,
  september: 30,
  october: 31,
  november: 30,
  december: 31
}

puts "Введите дату вида dd.mm.yyyy"
day, month, year = gets.chomp.split(".").map(&:to_i)

is_leap = (year % 4 == 0 && year % 100 != 0) || (year % 100 && year % 400 == 0)
is_post_feb = month > 2

date_num = months.values.first(month - 1).sum + day + (is_leap && is_post_feb ? 1 : 0)

puts date_num
