require 'test_helper'

class PriceTest < ActiveSupport::TestCase
  test "Prices must have a dollar amount that is a decimal" do
    assert Price.new(dollars: 1.0, set_at: Time.now).valid?
    assert Price.new(dollars: 5.5, set_at: Time.now).valid?
    assert_not Price.new(dollars: "five", set_at: Time.now).valid?
    assert_not Price.new(dollars: -5.0, set_at: Time.now).valid?
    assert_not Price.new(dollars: 0, set_at: Time.now).valid?
  end

  test "Prices must have been set at some time" do
    assert Price.new(dollars: 1.0, set_at: Time.now).valid?
    assert_not Price.new(dollars: 1.0, set_at: nil).valid?
  end
end
