RSpec.describe Song do
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.new(length: 123, play_count: 2)

      expect(song).to_not be_valid
    end

    it 'is invalid without a length' do
      song = Song.new(title: "I'm Not Okay", play_count: 22)

      expect(song).to_not be_valid
    end

    it 'is valid without a play_count' do
      song = Song.new(title: "I'm Not Okay", length: 220)

      expect(song).to be_valid
    end
  end
  describe 'Class methods' do
    describe '.total_play_count' do
      it 'returns total play counts for all songs' do
        Song.create(title: 'Song 1', length: 180, play_count: 3)
        Song.create(title: 'Song 2', length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end

      it '.average_play_count' do
        Song.create(title: 'Song 1', length: 180, play_count: 3)
        Song.create(title: 'Song 2', length: 220, play_count: 4)
        Song.create(title: 'Song 3', length: 240, play_count: 5)

        expect(Song.average_play_count).to eq(4)
      end
    end
  end
end
