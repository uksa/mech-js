##
# The button class has been designed around usign javascripts
# events to figure out where mech should be sent

class Mechanize::Page::Button

  attr_reader   :node
  attr_accessor :page
  attr_accessor :mech

  ##
  # Creates a new Mechanize::Page::Button from an button +node+ and source
  # +page+.

  def initialize node, page
    @node = node
    @page = page
    @mech = page.mech
  end

  # This method is a shortcut to get form's DOM id.
  # Common usage:
  #   page.button_with(:dom_id => "submit-btn")
  # Note that you can also use +:id+ to get to this method:
  #   page.button_with(:id => "submit-btn")

  def dom_id
    node['id']
  end

  # This method uses the text of the button.
  # Common usage:
  #   page.button_with(:text => "Cancel")

  def text
    @node.inner_text.strip
  end

  # This method will use use the location.href from the onclick attribute
  # to construct a get method on the agent.

  def js_click
    href     = node.attributes['onclick'].to_s.match(/location.href='(.*)'/)[1]
    full_uri = URI::HTTP.build({scheme: page.uri.scheme, host: page.uri.host, path: href})
    mech.get(full_uri)
  end

end