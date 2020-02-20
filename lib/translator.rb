class Translator

  def get_file_as_string(filename)
    data = ''
    file = File.open(filename, "r")
    file.each_line do |line|
      data += line
    end
    return data
  end

  def string_to_array(string)
    array = string.split('\n')
    return array
  end
end
