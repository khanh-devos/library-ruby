class InputValidation
  private

  def show_phrases(phrase)
    print "#{phrase} "
  end

  public

  def input_positive(phrase = nil)
    num = 0
    until num.positive?
      show_phrases(phrase)
      num = gets.chomp.to_i
      puts 'a positive num please' unless num.positive?
    end
    num
  end

  def input_string(phrase = nil)
    str = ''
    until str.strip.length.positive?
      show_phrases(phrase)
      str = gets.chomp
    end
    str
  end

  def input_yes_no(phrase = nil)
    show_phrases(phrase)
    gets.chomp[0, 1].downcase != 'n'
  end
end
