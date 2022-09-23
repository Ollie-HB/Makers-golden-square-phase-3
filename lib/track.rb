class Track
    def initialize(title, artist)
        @title = title
        @artist = artist
    end

    def title
       return @title
    end

    def artist
        return @artist
    end
  
    def matches?(keyword) 
        @artist.include?(keyword) || @title.include?(keyword)
    end
  end