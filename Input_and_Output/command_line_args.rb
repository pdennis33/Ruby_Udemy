# Args are referenced by the ARGV array
ARGV.each do |arg|
  num = arg.to_i
  puts "The square of #{num} is #{num ** 2}"
end
