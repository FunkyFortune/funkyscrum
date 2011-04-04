require 'test_helper'

class BacklogTest < ActiveSupport::TestCase
  test "backlog shouldn't save without a name" do
    backlog = Backlog.new
    
    assert !backlog.save
  end
end
