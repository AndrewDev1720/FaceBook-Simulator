require 'test_helper'

class HashtagTest < ActiveSupport::TestCase
    def setup
        @hashtag = Hashtag.new(name: "Chess")
    end
    test "Hashtag should be valid" do
        # @hashtag = Hashtag.new(name: "Chess")
        assert @hashtag.valid?
    end 

    test "Hashtag name should be present" do
        @hashtag.name = " "
        assert_not @hashtag.valid?
    end

    test "Hashtags shouls be unique" do
        @hashtag.save
        @hashtag2 = Hashtag.new(name: "Chess")
        assert_not @hashtag2.valid?
    end
end