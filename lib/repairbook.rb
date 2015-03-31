class RepairBook
  def flip_book(str)
    flipped = str.scan(/\w+[[:punct:]]*/).reverse.join(' ')
  end
end

