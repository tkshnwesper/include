require "./spec_helper"

class TestClass
end

module TestModule
  extend self

  def test_function
  end

  CONSTANT = 1

  class TClass
  end

  module SubModule
  end
end

include_module(TestModule)

describe "include_module" do
  it "raises error when argument is not a module" do
    expect_raises Exception, "TestClass is not a module" do
      include_module TestClass
    end
  end

  it "includes constants, classes and methods" do
    TClass.should eq TestModule::TClass
    CONSTANT.should eq TestModule::CONSTANT
    test_function.should eq TestModule.test_function
  end
end
