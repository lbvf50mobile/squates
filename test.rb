require 'minitest/autorun'
require 'date'
require "colorize"


describe "squates" do
    it "should write line to the CLEAR file in the ENV['SQUATES_FILE']" do
        date = DateTime.now
        time = date.strftime("%H:%M %d.%m.%Y")
        line = time + " 10 squates 01"
        `bash tests/empty.sh`
        result = %x{tail -1 tests/empty}
        assert_equal line, result[0..line.size-1]
    end

    it "should increment counter of squotes sets" do
        date = DateTime.now
        time = date.strftime("%H:%M %d.%m.%Y")
        line = time + " 10 squates 05"
        `bash tests/full.sh`
        result = %x{tail -1 tests/full}
        assert_equal line, result[0..line.size-1]
    end
end