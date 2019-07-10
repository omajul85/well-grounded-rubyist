# these file-testing methods are
# happy to take directories, links, sockets, and other filelike entities as their arguments.
# They’re not restricted to regular files:

# Does a file exist?
p FileTest.exist?('family.txt')

# Is the file a directory? A regular file? A symbolic link?
p FileTest.directory?("family.txt")
p FileTest.file?("family.txt")
p FileTest.symlink?("family.txt")

# Is a file readable? Writable? Executable?
p FileTest.readable?("/tmp")
p FileTest.writable?("/tmp")
p FileTest.executable?("/Users/omajul/Projects/ruby/well-grounded-rubyist/file_and_io_operations/output.txt")

# What is the size of this file? Is the file empty (zero bytes)?
p FileTest.size('family.txt')
p FileTest.zero?("/tmp/tempfile")