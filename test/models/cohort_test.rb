# require 'test_helper'

# class CohortTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
# end

require "spec_helper"

describe Cohort do
  context "when displaying the cohort's name" do 
    it "is blah blah blah"
      cohort = Cohort.new(name: "Kangaroos")
      expect(cohort.name).to eq("Kangaroos")
    end
  end
end