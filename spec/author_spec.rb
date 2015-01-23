require_relative './spec_helper'
require_relative '../lib/author'

describe Author do 
  describe "#male?" do
    context "is male" do
      let(:dude) { Author.new(gender: "male") }

      it "is true" do
        expect( dude.male? ).to be_truthy
      end
    end
  end  
end
