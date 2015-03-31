class RepairBook
  def flip_book(str)
    #flipped = str.scan(/\w+[[:punct:]]*/).reverse.join(' ')
    flipped = str.scan(/\w[\w\'\-]*[[:punct:]]*/).reverse.join(' ')
  end
end

