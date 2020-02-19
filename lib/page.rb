# frozen_string_literal: true

# Counting the number of times each page appears in the input file
class Page
  def count(log)
    entries = log.split(',')
    home = entries.count('/home')
    about = entries.count('/about')
    if home >= 1 && about.zero?
      "/home - visits #{home}"
    elsif home.zero? && about >= 1
      "/about - visits #{about}"
    else
      "/home - visits #{home}, /about - visits #{about}"
    end
  end
end
