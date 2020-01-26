# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
def key_for_min_value(name_hash)
  if name_hash.length == 0
    return nil
  else
    max_val = name_hash.value(name_hash.values.max)
    #max_val = name_hash.max_by {|k,v| v}
    name_hash.each do |symbol, value|
      if value < max_val
        min_value = value
      else
        max_value = value
      end
    end
    return name_hash.select{|key, val| val[min_value]}
  end
end
