class Mechanize::Page < Mechanize::File
  elements_with :button

  ##
  # Return a list of all img tags
  def buttons
    @buttons ||=
        search('button').map { |node| Button.new(node, self) }
  end

end

