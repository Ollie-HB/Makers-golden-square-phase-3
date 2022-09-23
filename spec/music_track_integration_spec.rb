require_relative '../lib/track'
require_relative '../lib/music_library'

RSpec.describe 'music_integration' do
    
    it "adds tracks to list " do
        library = MusicLibrary.new
        track1 = Track.new("artist","track")
        track2 = Track.new("artist2", "track2")
        library.add(track1)
        library.add(track2)
        expect(library.all).to eq [track1, track2]
    end

    context "Given a keyword" do
        it "returns tracks that match keyword" do
            library = MusicLibrary.new
            track1 = Track.new("song", "me")
            track2 = Track.new("ollie", "greatest hits")
            library.add(track1)
            library.add(track2)
            expect(library.search("song")).to eq [track1]
        end
    end

end