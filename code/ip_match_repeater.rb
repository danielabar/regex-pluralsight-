re = /^((25[0-5]|2[0-4][0-9]|[01]?[0-9]{1,2})\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9]{1,2})$/m
str = '255.48.8.29
127.0.0.0
0.0.0.0
50.96.38.64
158.06.125.83

272.5.260.85
5862.654.384.0'

# Print the match result - each match is an array
str.scan(re) do |match|
  puts "MATCH ARRAY: #{match.to_s}"
  match.each { |m| puts "\t#{m}"}
end

# MATCH ARRAY: ["8.", "8", "29"]
# 	8.
# 	8
# 	29
# MATCH ARRAY: ["0.", "0", "0"]
# 	0.
# 	0
# 	0
# MATCH ARRAY: ["0.", "0", "0"]
# 	0.
# 	0
# 	0
# MATCH ARRAY: ["38.", "38", "64"]
# 	38.
# 	38
# 	64
# MATCH ARRAY: ["125.", "125", "83"]
# 	125.
# 	125
# 	83