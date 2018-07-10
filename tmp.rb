p 'alias x="time ruby tmp.rb"'
require "colorize"
require "date"

def get_num(file_name)
    time_for_regex = DateTime.now.strftime("%d\\.%m\\.%Y")
    regex = Regexp.new time_for_regex
    content = `cat #{file_name}`
    arr = content.split("\n").select{|x| /squates/ === x}.select{|x| regex === x}.reverse
    arr.empty? ? '01' : format('%02d',arr[0].match(/\s*(\d{2,})\s*$/)[1].to_i + 1)
end

p get_num('tests/full')