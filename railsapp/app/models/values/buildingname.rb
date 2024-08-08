class  Buildingname
    attr_reader :name, :room_number

  # 建物名は任意の文字（数字も含む）、部屋番号は1〜5桁の数字
  VALID_NAME_REGEX = /\A.+\z/  # 建物名は空でなければ何でも良い
  VALID_ROOM_NUMBER_REGEX = /\A\d{1,5}\z/  # 1〜5桁の数字で構成される部屋番号

  def initialize(name, room_number)
    @name = name
    @room_number = room_number

        # 建物名と部屋番号が有効かどうかを直接チェック
        unless @name =~ VALID_NAME_REGEX
        raise ArgumentError, '不正な建物名です'
        end

        unless @room_number =~ VALID_ROOM_NUMBER_REGEX
        raise ArgumentError, '不正な部屋番号です'
        end
    end
end