def open_user_file
  print "File to open: "
  filename = gets.chomp
  path = File.join(File.dirname(__FILE__), filename)
  begin
    fh = File.open(path, 'a+')
  rescue
    puts "Could not open your file."
    return
  end
  yield(fh)
  fh.close
end

open_user_file do |file|
  file.puts "This is crazy"
end
