class Musician

  attr_reader :name

  def initialize(name, instrument)

    @name = name
    @instrument = instrument

  end #End of initalize method

  #Removed and used attr_reader instead
  # def get_name()
  #   return @name
  # end #End of name method

  def play_song(song_name)

    return @instrument.make_sound() + " I'm playing #{song_name}"

  end #End of play_song method


end #End of Musician class
