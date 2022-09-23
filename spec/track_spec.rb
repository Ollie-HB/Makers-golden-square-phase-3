require_relative '../lib/track'


RSpec.describe Track do
    it "contsructs" do
        track = Track.new("title", "artist")
        expect(track.title).to eq "title"
        expect(track.artist).to eq "artist"
    end 
    
end