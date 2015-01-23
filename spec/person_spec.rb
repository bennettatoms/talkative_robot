require_relative './spec_helper'
require_relative '../lib/person'


describe Person do
  describe "male?" do
    context "is a guy" do
      let(:cap_m) { Person.new(gender: "M") }
      let(:lwr_m) { Person.new(gender: "m") }
      let(:male) { Person.new(gender: "male") }

      it "is true" do
        expect( cap_m.male? ).to be_truthy
        expect( lwr_m.male? ).to be_truthy
        expect( male.male? ).to be_truthy
      end
    end
    
    context "is a gal" do
      let(:cap_f) { Person.new(gender: "F") }
      let(:lwr_f) { Person.new(gender: "f") }
      let(:female) { Person.new(gender: "female") }

      it "is false" do
        expect( cap_f.male?).to be_falsey
        expect( lwr_f.male?).to be_falsey
        expect( female.male?).to be_falsey
      end
    end
   
    context "is a guy" do
      let(:person_g) { Person.new(gender: "giraffe") }
      let(:person_z) { Person.new(gender: 812)       }
      let(:sym)      { Person.new(gender: "%#^FRX")   }
      it "is false" do
        expect( person_g.male? ).to be_falsey
        expect( person_z.male? ).to be_falsey
        expect( sym.male? ).to be_falsey
      end
    end
  end

  describe "under_18?" do
    context "is young" do
      let(:person_m) { Person.new(age: 16) }

      it "is true" do
        expect( person_m.under_18? ).to be_truthy
      end
    end
    context "is old" do
      let(:person_o) { Person.new(age: 61) }
      let(:person_ooo) { Person.new(age: 7901921) }

      it "is false" do
        expect( person_o.under_18? ).to be_falsey
        expect( person_ooo.under_18? ).to be_falsey
      end
    end
  end

  describe "over_55?" do
    context "is old" do
      let(:person_m) { Person.new(age: 67) }

      it "is true" do
        expect( person_m.over_55? ).to be_truthy
      end
    end
    context "is young" do
      let(:person_y) { Person.new(age: 14) }
      let(:person_neg) { Person.new(age: -3) }
      
      it "is false" do
        expect( person_y.over_55? ).to be_falsey
        expect( person_neg.over_55? ).to be_falsey
      end
    end
  end
end