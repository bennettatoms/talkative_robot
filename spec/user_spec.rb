require 'spec_helper'
require_relative '../lib/user'


describe User do
  describe "male?" do
    context "is a guy" do
      let(:user_m) { User.new(gender: "M") }
      
      it "is true" do
        expect( user_m.male? ).to be_truthy
      end
    end
    context "is a gal" do
      let(:user_f) { User.new(gender: "F") }

      it "is false" do
        expect( user_f.male? ).to be_falsey
      end
    end
  end

  describe "under_18?" do
    context "is young" do
      let(:user_y) { User.new(age: 14) }

      it "is true" do
        expect( user_y.under_18? ).to be_truthy
      end
    end
    context "is old" do
      let(:user_o) { User.new(age: 73) }

      it "is false" do
        expect( user_o.under_18? ).to be_falsey
      end
    end
  end

  describe "over_55?" do
    context "is old" do
      let(:user_o) { User.new(age:91) }

      it "is true" do
        expect( user_o.over_55? ).to be_truthy
      end
    end
    context "is young" do
      let(:user_y){ User.new(age: 15) }

      it "is false" do
        expect( user_y.over_55? ).to be_falsey
      end
    end
  end

  describe "years_till_75" do
    context "not yet 75" do
      let(:user_n) { User.new(name: "Bob", age: 70) }

      it "returns that user has not yet reached milestone" do
        expect( user_n.years_till_75 ).to eq("You'll be 75 in 5 years, Bob.")
      end
    end
    context "older than 75" do
      let(:user_o) { User.new(name: "Gert", age: 143) }

      it "returns that user is past milestone" do
        expect( user_o.years_till_75 ).to eq("You were 75 68 years ago, Gert.")
      end
    end
    context "age 75" do
      let(:user_z) { User.new(name: "zap", age: 75) }

      it "returns that user is at milestone age" do
        expect( user_z.years_till_75 ).to eq("You're 75! Quite the milestone, zap.")
      end
    end
  end
end
