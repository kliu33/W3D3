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
        # return self if self.length == 0
        # #sets = self[0...-1].subsets
        # (0...sets.length).each do |i|
        #     sets_with_last[i] << self[-1]
        #     puts self[-1]
        #     << sets_with_last[i]
        # end
        # sets

        #subsets(self[0...-1]) 
        #base case
        #return self if self.length == 0
        #sets = []
        #(0...self.length).each do |i|
            #sets << self[0..i].subsets
        #end


        #last = self[-1]
        #sets = self[0...-1]
        #sets << #last
        
        last = self[-1]
        
    end
end