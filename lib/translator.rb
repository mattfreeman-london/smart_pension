def get_file_as_string(filename)
  data = ''
  file = File.open(filename, "r")
  file.each_line do |line|
    data += line
  end
  return data
end
