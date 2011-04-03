require 'test_helper'

class BacklogTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "backlog shouldn't save without a name" do
    backlog = Backlog.new
    
    assert !backlog.save
  end
end
