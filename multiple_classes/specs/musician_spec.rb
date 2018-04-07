require("minitest/autorun")
require("minitest/rg")

require_relative("../musician.rb")
require_relative("../instrument.rb")

class MusicianTest < Minitest::Test

  def setup()

      guitar = Instrument.new("Fender Strat", "Guitar")
      piano = Instrument.new("Steinway", "Piano")

      @musician1 = Musician.new("Bob Dylan", guitar)
      @musician2 = Musician.new("Elton John", piano)

  end #End of setup method

  def test_get_name
      assert_equal("Bob Dylan", @musician1.name)
  end #End of test_get_name method

  def test_play_song()
      result = @musician1.play_song("All Along the Watchtower")
      assert_equal("Twing Twang... I'm playing All Along the Watchtower", result)
  end #End of test_play_song method

  def test_play_song__on_piano
      result = @musician2.play_song("Rocket Man")
      assert_equal("Plink Plonk... I'm playing Rocket Man", result)
  end #End of test_play_song__on_piano method

end #End of class MusicianTest
