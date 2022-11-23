class Array
    def deep_dup
        return self if self.length == 0
        empty_array = []
        empty_array << self[0]
        empty_array.concat(self[1..-1].deep_dup)
        return empty_array
    end
end