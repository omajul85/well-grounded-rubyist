langs = %w{ Ruby C APL Perl Smalltalk }

puts "default min using <=>: #{langs.min}"

# block-based approach using min_by
m = langs.min_by { |lang| lang.size }
puts "Min using min_by specifying size: #{m}"

# Using hashes

state_hash = {"New York" => "NY", "Maine" => "ME",
  "Alaska" => "AK", "Alabama" => "AL", "Zootropolis" => "ZT"}
p state_hash.min # uses keys to determining ordering
p state_hash.max
