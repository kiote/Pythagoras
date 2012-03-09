$LOAD_PATH << File.expand_path('../../', __FILE__)
require 'spec_helper'

describe Pyth do
  before do
    @birthday = '21.08.1984'
    @res = {1=>[1, 1, 1, 1], 2=>[2, 2], 3=>[3, 3], 4=>[4], 6=>[6], 8=>[8, 8], 9=>[9, 9]}

  end

  describe "birthday" do
    it "should return valid array" do
      Pyth.birthday(@birthday).must_equal @res
    end
  end

  describe "description" do
    it "should return valid descr" do
      Pyth.description(@res).first.length.wont_be :<, 100
    end
  end
end