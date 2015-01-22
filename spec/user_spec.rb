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
  end
end

describe User do
  describe "under_18?" do
    context "is young" do
      let(:user_y) { User.new(age: 14) }

      it "is true" do
        expect( user_y.under_18? ).to be_truthy
      end
    end
  end
end

describe User do
  describe "over_55?" do
    context "is old" do
      let(:user_o) { User.new(age:91) }

      it "is true" do
        expect( user_o.over_55? ).to be_truthy
      end
    end
  end
end

# describe User do
#   describe "years_till_75" do
#     context "is past milestone" do
#       let(:user_y) { User.new(age: 16) }

#       it "is false" do
#         expect( user_y.years_till_75 ).to be.falsey
#       end
#     end
#   end
# end