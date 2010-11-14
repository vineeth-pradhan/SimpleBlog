module CustomisedCrudHelper
    def to_snake(string)

    string.gsub!(/[A-Z]/) {
      |c| + c.downcase
    }
    string.reverse!
    string.chomp!('_')
    string.reverse!

  end
end
