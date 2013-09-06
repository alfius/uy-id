module Uy
  class Id
    FACTORS = [2,9,8,7,6,3,4]

    attr_accessor :id

    def initialize(id=nil)
      @id = id || Id.generate
    end

    def is_valid?
      return false unless @id =~ /\d{8}/
      return false unless Id.calculate_check_digit(@id) == @id[7].to_i

      true
    end

    alias valid? is_valid?

    protected

    def self.calculate_check_digit(id)
      id = id.length == 8 ? id.chop : id
      checksum =
        id
        .chars
        .to_a
        .map(&:to_i)
        .zip(FACTORS)
        .map {|d| d.reduce(&:*)}
        .reduce(:+)
      check_digit = (10 - (checksum % 10)) % 10
      check_digit
    end

    def self.generate
      id = ''
      7.times { id += rand(0..9).to_s }
      id += calculate_check_digit(id).to_s
      id
    end
  end
end
