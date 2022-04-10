require "./spec_helper"

class TestClass
end

describe "include_module" do
  it "raises error when argument is not a module" do
    expect_raises Exception, "TestClass is not a module" do
      include_module TestClass
    end
  end
end
