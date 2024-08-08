class Zipcode
    attr_reader :code
    
    def initialize(code)
      unless code.match?(/\A\d{3}-\d{4}\z/)
        raise ArgumentError, "Invalid postal code format"
      end
      @code = code
    end
  end