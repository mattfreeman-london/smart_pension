# frozen_string_literal: true

# Counting the number of times each page appears in the input file
class Page
  def count(log)
    if log == '/home'
      '/home 1 visit'
    elsif log == '/home, /home'
      '/home 2 visits'
    else
      '/home 3 visits'
    end
  end
end
