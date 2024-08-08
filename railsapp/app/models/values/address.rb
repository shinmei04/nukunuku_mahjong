class Address
    attr_reader :block

    def initialize(block)
      @block = block
  
      # 番地が有効かどうかを直接チェック
      parts = @block.split('-')
      unless parts.size == 3 && parts.all? { |part| part =~ /\A\d+\z/ }
        raise ArgumentError, '不正な番地です'
      end
    end
end