d = Dir.new '/Users/omajul/Projects/ruby/well-grounded-rubyist/file_and_io_operations'
entries = d.entries
entries.delete_if {|entry| entry =~ /^\./ }
entries.map! {|entry| File.join(d.path, entry) }
entries.delete_if {|entry| !File.file?(entry) }
print "Total bytes: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }

# Same stuff but using globbing
dir = '/Users/omajul/Projects/ruby/well-grounded-rubyist/file_and_io_operations'
entries = Dir["#{dir}/*"].select {|entry| File.file?(entry) }
print "Total bytes using globbing: "
puts entries.inject(0) {|total, entry| total + File.size(entry) }
