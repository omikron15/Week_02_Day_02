class Instrument

  attr_reader :model, :type

  def initialize(model, type)

    @model = model
    @type = type

  end #End of initalize method

  def make_sound()

     if @type == "Guitar"
       return "Twing Twang..."
     elsif @type == "Piano"
       return "Plink Plonk..."
     end  #End of if statement

  end #End of make_sound method

end #End of class Instrument
