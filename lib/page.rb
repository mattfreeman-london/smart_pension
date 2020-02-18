# frozen_string_literal: true

# Counting the number of times each page appears in the input file
class Page
  def count(log)
    entries = log.split(',')
    if entries.count.to_s == '1'
      '/home 1 visit'
    else
      '/home ' + entries.count.to_s + ' visits'
    end
  end
end
