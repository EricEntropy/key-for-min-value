# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    values = []
    #put the values from hash into array
    name_hash.collect do |key, value|
        values << value
    end   
    #find min value in values array, set it to equal the very first one
    min = values[0]
    values.each do |x| 
        if x < min 
            min = x
        end
    end
    #function to return specific key given a specific value 
    return name_hash.key(min)
end