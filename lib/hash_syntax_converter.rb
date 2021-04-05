class HashSyntaxConverter
  def convert(old_syntax)
    old_syntax.gsub(/:(?<key>\w+) *=> */, '\k<key>: ')
  end
end
