class BWT
  TERMINATOR = '$'

  # encode applies the Burrows–Wheeler transformation to a string
  #
  # Start with a string:
  #
  # banana
  #
  # Append the termination character '$':
  #
  # banana$
  #
  # Create a list of every rotational permutation:
  #
  # banana$
  # anana$b
  # nana$ba
  # ana$ban
  # na$bana
  # a$banan
  # $banana
  #
  # Lexcagraphically sort the list:
  #
  # $banana
  # a$banan
  # ana$ban
  # anana$b
  # banana$
  # na$bana
  # nana$ba
  #
  # Return the string made from taking the last character from every item in the list:
  # annb$aa

  def encode(s)
    c=s.split(//)<<'$';c.each_index.map{|i|c.rotate i}.sort.map(&:last).join
  end

  # decode applies the reverse Burrows–Wheeler transformation to a string
  #
  # Create n strings each starting with a character from the encoded string:
  # a
  # n
  # n
  # b
  # $
  # a
  # a
  #
  # Sort the n strings lexicographically:
  # $
  # a
  # a
  # a
  # b
  # n
  # n
  #
  # Prepend a character of the encoded word to every string:
  # a$
  # na
  # na
  # ba
  # $b
  # an
  # an
  #
  # Sort the list of strings lexicographically:
  # $b
  # a$
  # an
  # an
  # ba
  # na
  # na
  #
  # Repeat adding and sorting a total of n times
  # You should now have n strings of length n:
  #
  # a$banan
  # na$bana
  # nana$ba
  # banana$
  # $banana
  # ana$ban
  # anana$b
  #
  # Pick the string that ends with the terminator:
  # banana$
  #
  # return the string with the terminator removed :
  # banana

  def decode(e)
    c=e.chars;c.inject([]){|b|c.zip(b).map(&:join).sort}.find{|s|s[-1]=='$'}[0..-2]
  end
end