class Mechanize::Page < Mechanize::File
  elements_with :button

  ##
  # Return a list of all buttons
  def buttons
    @buttons ||=
        search('button').map { |node| Button.new(node, self) }
  end

end

