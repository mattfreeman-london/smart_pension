# frozen_string_literal: true

# Counting the number of times each page appears in the input file
class Page
  def count(log)
    entries = log.split(',')
    home = entries.count('/home')
    about = entries.count('/about')
    if home == 1 && about.zero?
      "/home #{home} visit"
    elsif home >= 2 && about.zero?
      "/home #{home} visits"
    elsif home.zero? && about == 1
      "/about #{about} visit"
    elsif home.zero? && about >= 2
      "/about #{about} visits"
    elsif home == 1 && about == 1
      "/home #{home} visit, /about #{about} visit"
    else
      "/home #{home} visits, /about #{about} visits"
    end
  end
end
