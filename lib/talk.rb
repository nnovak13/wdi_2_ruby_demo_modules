module Talk

  def say(phrase)
    %x{ say #{phrase} }
  end
end
