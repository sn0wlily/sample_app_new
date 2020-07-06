require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title, "task suporter"
    assert_equal full_title("Help"), "Help | task suporter"
  end
end