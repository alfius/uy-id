require 'uy/id'

describe Uy::Id do
  describe 'validations' do
    it { expect(Uy::Id.new('')).not_to be_valid }
    it { expect(Uy::Id.new('asdf')).not_to be_valid }
    it { expect(Uy::Id.new('1122222')).not_to be_valid }
    it { expect(Uy::Id.new('03555770')).not_to be_valid }
    it { expect(Uy::Id.new('21922316')).to be_valid }
    it { expect(Uy::Id.new('10253720')).to be_valid }
  end

  describe 'generation' do
    it 'generates valid numbers' do
      25.times { expect(Uy::Id.new).to be_valid }
    end
  end
end
