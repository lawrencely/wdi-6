def valid_ip(ip)
  ip_validation_regex = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/
  if ip_validation_regex.match(ip)
    puts "valid ip"
  else
    puts "invalid ip"
  end
  return ip
end

valid_ip("111.222.333.444")