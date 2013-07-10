Dir.chdir '/Users/scott/Downloads/destination_directory'

file_names = Dir['/Users/scott/Downloads/source_directory/*.m4a']
file_names.shuffle.shuffle.shuffle.shuffle.shuffle

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{file_names.length} files: "

file_counter = 1

file_names.each do |name|
  print '.'

  new_name =  if file_counter < 10
                "#{batch_name}_0#{file_counter}.m3u"
              else
                "#{batch_name}_#{file_counter}.m3u"
              end

  if File.exist?(new_name)
    puts
    puts 'THAT FILE ALREADY EXISTS. Please try again with another batch name.'
    exit 
  else
    File.rename name, new_name
    file_counter += 1
  end
end

puts
puts 'Done!'