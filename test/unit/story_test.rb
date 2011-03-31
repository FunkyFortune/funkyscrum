require 'test_helper'

class StoryTest < ActiveSupport::TestCase
#  fixtures :stories

  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "we have at least one story" do
    assert Story.all.count > 0
  end

  test "story shouldn't save without name" do 
    story = Story.new
    assert !story.save
  end
end
