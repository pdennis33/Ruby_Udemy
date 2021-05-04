# Custom string format using strftime
# => refer to https://apidock.com/ruby/DateTime/strftime for more info
today = Time.now
p today.strftime("%B %d, %Y")
p today.strftime("%d----%B----%j")
p today.strftime("%Y%m")
