class String
  def sanitize!
    self.replace(sanitize)
  end
  
  def sanitize
    Loofah.scrub_fragment(self, :prune).to_text
  end
end