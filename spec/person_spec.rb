require 'spec_helper'
require_relative '../lib/person'

describe Person do
  describe "male?" do
    context "is a guy" do
      let(:person_m) { Person.new(gender: "M") }
      
      it "is true" do
        expect( person_m.male? ).to be_truthy
      end
    end
  end
end

# test under_18?
describe Person do
  describe "under_18?" do
    context "is young" do
      let(:person_m) { Person.new(age: 16) }

      it "is true" do
        expect( person_m.under_18? ).to be_truthy
      end
    end
  end
end

# test over_55?
describe Person do
  describe "over_55?" do
    context "is old" do
      let(:person_m) { Person.new(age: 67) }

      it "is true" do
        expect( person_m.over_55? ).to be_truthy
      end
    end
  end
end