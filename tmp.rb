p 'alias x="time ruby tmp.rb"'
require "colorize"
require "date"

date = DateTime.now
time_for_regex = date.strftime("%d\\.%m\\.%Y") # ("/%H:%M %d\\.%m\\.%Y/")
p time_for_regex
regex = Regexp.new time_for_regex
content = `cat tests/full`
p arr = content.split("\n").select{|x| /squates/ === x}.select{|x| regex === x}.reverse
p arr[0].match(/\s*(\d{2,})\s*$/)[1].to_i + 1