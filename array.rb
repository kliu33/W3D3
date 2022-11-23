class Array
    def deep_dup
        return self if self.length == 0
        empty_array = []
        empty_array << self[0]
        empty_array.concat(self[1..-1].deep_dup)
        return empty_array
    end

    def subsets
        p self
        return self if self.length == 0
        sets = self[0...-1].subsets
        sets_with_last = sets.deep_dup
        (0...sets.length).each do |i|
            sets_with_last[i] << self[-1]
            puts self[-1]
            sets << sets_with_last[i]
        end
        sets
    end
end