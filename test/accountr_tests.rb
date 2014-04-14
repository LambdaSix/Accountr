require_relative '../lib/mc-accountr'
require 'test/unit'

class AccountrTests < Test::Unit::TestCase

  def test_find_profiles
    acc = Accountr.new
    res = acc.find_profiles %w(Dinnerbone Alanbriolat Mustek)

    dinnerbone = res.select { |val| val.name =~ /Dinnerbone/}.first
    alanbriolat = res.select { |val| val.name =~ /alanbriolat/}.first

    assert_equal '61699b2ed3274a019f1e0ea8c3f06bc6', dinnerbone.id
    assert_equal 'e11c07ec7b1f4db0a3f477fee7741136', alanbriolat.id
  end
end