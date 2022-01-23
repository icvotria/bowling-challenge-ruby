require 'game'

describe Game do
  describe '.play' do
    it 'handles non-strikes' do
      21.times { expect(subject).to receive(:gets).and_return('5') }
      subject.play
    
      expect(subject.frames).to be_a Array
      expect(subject.frame_number).to eq 11
    end

    it 'handles strikes' do
      11.times { expect(subject).to receive(:gets).and_return('10') }
      subject.play
    
      expect(subject.frames).to be_a Array
      expect(subject.frame_number).to eq 11
    end
  end
end