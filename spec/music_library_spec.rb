require_relative '../lib/music_library'

RSpec.describe MusicLibrary do
    it "constructs with empty array" do
        library = MusicLibrary.new
        expect(library.all).to eq []
    end

    context "Given tracks " do
        it "returns a list of tracks" do
            library = MusicLibrary.new
            track1 = double :track 
            track2 = double :track
            library.add(track1)
            library.add(track2)
            expect(library.all).to eq [track1,track2]
        end
    end

    context "Given a keyword" do
        it "returns tracks that match keyword" do
            library = MusicLibrary.new
            track1 = double :track1, matches?: true
            track2 = double :track2, matches?: false
            library.add(track1)
            library.add(track2)
            expect(library.search("song")).to eq [track1]
        end
    end
end
    
