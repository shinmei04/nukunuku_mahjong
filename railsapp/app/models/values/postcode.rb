class Postcode
    attr_reader :number

    def initialize(number)
      # 非数字を全て取り除く
      @number = number.gsub(/\D/, '')
      
      # 電話番号が10桁または11桁であるかどうかをチェック
      unless @number.length == 10 || @number.length == 11
        raise ArgumentError, '不正な電話番号です'
      end
    end
end