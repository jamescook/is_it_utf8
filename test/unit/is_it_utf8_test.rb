# frozen_string_literal: true

require_relative '../../lib/is_it_utf8'
require 'minitest/autorun'

describe 'IsItUtf8' do
  describe '.valid? given a non-string' do
    it 'returns a type error' do
      assert_raises TypeError do
        IsItUtf8.valid?(42)
      end
    end
  end

  describe '.valid? given a valid utf8 string' do
    it 'returns true' do
      assert_equal true, IsItUtf8.valid?('ølga')
      assert_equal true, IsItUtf8.valid?('')
    end
  end

  describe '.valid? given an invalid utf8 string' do
    it 'returns false' do
      assert_equal false, IsItUtf8.valid?("ølga\xf0\x28\x8c\x28")
      assert_equal false, IsItUtf8.valid?("\xf8\xa1\xa1\xa1\xa1")
      assert_equal false, IsItUtf8.valid?("\xfc\xa1\xa1\xa1\xa1\xa1")
    end
  end
end
