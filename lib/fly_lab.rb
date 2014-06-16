module Fly

  def fly(msg)
    %x{say '#{msg}'}
  end
end
