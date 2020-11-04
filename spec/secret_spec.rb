require 'secret'

describe SecretDiary do
  let(:secretdiary) {SecretDiary.new}
  it "Creates a new instance of the class SecretDiary" do
    expect(secretdiary).to be_a_kind_of SecretDiary
  end

  context "#locked? method" do

    it "allows us to unlock the diary" do
      expect(secretdiary.unlock).to eq false
    end

    it "allows us to lock the diary" do
      expect(secretdiary.lock).to eq true
    end

  end

  context "#add_entry" do

    it "raises an error if we try to add_entry but diary is locked" do
      secretdiary.lock
      expect{ secretdiary.add_entry(:entry) }.to raise_error "Secret Diary is locked!"
    end

  end

  context "#get_entries" do

    it "raises an error if we try to get_entries but diary is locked" do
      secretdiary.lock
      expect{ secretdiary.get_entries }.to raise_error "Secret Diary is locked!"
    end

  end

end
