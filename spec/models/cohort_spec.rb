require "rails_helper"

describe Cohort do
  context "when displaying the cohort's name" do 
    it "is blah blah blah" do
      cohort = Cohort.new(name: "Kangaroos")
      expect(cohort.name).to eq("Kangaroos")
    end
  end
end