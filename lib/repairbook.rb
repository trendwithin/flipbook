class RepairBook
  def flip_book(str)
    str.scan(/\w[\w\'\-]*[[:punct:]]*/).reverse.join(' ')
  end
end

