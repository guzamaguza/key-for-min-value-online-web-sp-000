# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
  lowest_value = 0
  lowest_key = nil

  if name_hash.length == 0
    return nil
  else
    #max_val = name_hash.value(name_hash.values.max)
    #max_val = name_hash.values.max
    name_hash.each do |key, value|
      if lowest_value == 0 || value < lowest_value
        lowest_value = value
        lowest_key = key
      end
    end
    return lowest_key
  end
end
