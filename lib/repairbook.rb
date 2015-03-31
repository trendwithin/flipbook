class RepairBook
  def flip_book(str)
    flipped = str.scan(/\w[\w\'\-]*[[:punct:]]*/).reverse.join(' ')
  end
end

