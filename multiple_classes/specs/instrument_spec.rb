require("minitest/autorun")
require("minitest/rg")

require_relative("../instrument.rb")

class InstrumentTest < Minitest::Test

  def setup()
    @instrument = Instrument.new("Les Paul", "Guitar")
    @instrument2 = Instrument.new("Yamaha", "Piano")
  end #End of setup method

  def test_model
    assert_equal("Les Paul", @instrument.model)
  end #End of test_model method

  def test_type
    assert_equal("Guitar", @instrument.type)
  end #End of test_type method

  def test_make_sound__on_guitar()
    assert_equal("Twing Twang..." , @instrument.make_sound())
  end

  def test_make_sound__on_piano()
    assert_equal("Plink Plonk..." , @instrument2.make_sound())
  end

end #End of class InstrumentTest
