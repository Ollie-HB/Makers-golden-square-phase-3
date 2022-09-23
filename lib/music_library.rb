class MusicLibrary
    def initialize
      @list = []
    end
  
    def add(track) 
        @list << track
    end
  
    def all
      return @list
    end
    
    def search(keyword) 
        @list.select{|track| track.matches?(keyword)}
    end
  end