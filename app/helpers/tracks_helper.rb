module TracksHelper
  def ugly_lyrics(lyrics)
    result = []
    lyrics = lyrics.dup
    until lyrics.dup.empty?
      result << lyrics[0...30]
      lyrics.slice!(0,30)
    end

    result.map do |i|
      "♫" + i
    end

    result.each do |result|
      "<p>#{result}</p>".html_safe
    end
  end
end
