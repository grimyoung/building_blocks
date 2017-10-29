require_relative "caesar"

describe caesar  do
  context "missing parameters" do
    it "returns '' for missing string" do
      expect(caesar()).to eql("")
    end

    it "returns the string for missing shift number" do
      expect(caesar("test")).to eql("test")
    end
  end

  context "shift values" do
    it "shifts values by 14" do
      expect(caesar("test example", 14)).to eql("hsgh sloadzs")
    end

    it "shifts values by -1" do
      expect(caesar("test example", -1)).to eql("sdrs dwzlokd")
    end

    it "shifts valus by 26" do
      expect(caesar("test example", 26)).to eql("test example")
    end
  end
end