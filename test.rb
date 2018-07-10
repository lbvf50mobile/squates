require 'minitest/autorun'
require 'date'
require "colorize"


describe "squates" do
    it "should write line to the CLEAR file in the ENV['SQUATES_FILE']" do
        a = DateTime.now
        time = a.strftime("%H:%M %d.%m.%Y")
        line = time + " 10 squates 01"
        puts "It should wirite to empty file #{line}".red
        `echo "" > tests/empty ; export SQUATES_FILE=tests/empty ; bash squates`
        result = `tail -1 tests/empty`
        assert_equal line, result
    end
end