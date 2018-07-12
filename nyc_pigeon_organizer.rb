def nyc_pigeon_organizer(data)
  new_hash = {}
    data.each do |category, info|
      info.each do |characteristic, names_array|
        names_array.each do |name|
          new_hash["#{name}"] = {}
        end
      end
    end
    data.each do |category, info|
      info.each do |characteristic, names_array|
        names_array.each do |name|
          new_hash["#{name}"][:"#{category}"] = []
        end
      end
    end
    data.each do |category, info|
      info.each do |characteristic, names_array|
        data[category][characteristic].each do |name|
          new_hash[name][category].push(characteristic.to_s)
        end
      end
    end
  return new_hash
end
      
