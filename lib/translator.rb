# frozen_string_literal: true

# to turn a log file into a useful format
class Translator
  def get_file_as_string(filename)
    data = ''
    file = File.open(filename, 'r')
    file.each_line do |line|
      data += line
    end
    data
  end

  def string_to_array(string)
    array = string.split("\n")
    array
  end

  def array_to_hash(array)
    array.map { |i| i.split ' ' }.to_h
  end

  def convert(logfile)
    log_string = get_file_as_string(logfile)
    log_array = string_to_array(log_string)
    log_hash = array_to_hash(log_array)
    log_hash
  end
end
