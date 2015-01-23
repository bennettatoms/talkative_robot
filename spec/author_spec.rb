require 'spec_helper'
require_relative '../lib/author'

describe Author do 
  describe gender do
    context "is male" do
      let(:dude){ Author.new(gender: "male") }

      it "is true" do
        expect( dude.gender ).to eq("male")
      end
    end
  end  
end
