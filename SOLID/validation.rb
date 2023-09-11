class InputValidation
  private

  def show_phrases(phrase)
    print "#{phrase} "
  end

  public

  def input_positive(phrase)
    num = 0
    until num.positive?
      show_phrases(phrase)
      num = gets.chomp.to_i
      puts 'a positive num please' unless num.positive?
    end
    num
  end

  def input_string(phrase)
    str = ''
    until str.strip.length.positive?
      show_phrases(phrase)
      str = gets.chomp
    end
    str
  end

  def input_yes_no(phrase)
    show_phrases(phrase)
    gets.chomp[0, 1].downcase == 'y'
  end
end

# a = InputAndValidation.new()
# p a.inputPositiveNum('Age:')
# p a.inputString('Name:')
# puts a.inputYesNo('Has parent permission? [Y/N]:')