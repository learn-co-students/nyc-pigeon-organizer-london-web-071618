def nyc_pigeon_organizer(data)
  # write your code here!

    pigeon_array = []

    # Finds names of each pigeon
    colours = data[:color].each do |colour, names|
          names.uniq {|x| pigeon_array << x}
        end
    pigeon_array = pigeon_array.uniq
    #--------------------------------------

    # Returns hash of pigeons names, genders and address
    pigeon_list = {}

    pigeon_array.each do |x|
      pigeon_list[x] = {:color => [],:gender => [], :lives => []}
    end

    pigeon_list
    #---------------------------------------

    # Returns colours of pigeons
    colours.each do |k,v|
      pigeon_array.map do |name|
        if v.include?(name)
        pigeon_list[name][:color] << k.to_s
        end
      end
    end

    #------------------------------------------

    # Returns gender of pigeons
      pigeon_array.each do |name1|
        if data[:gender][:male].include?(name1)
          pigeon_list[name1][:gender] << "male"
        elsif data[:gender][:female].include?(name1)
          pigeon_list[name1][:gender] << "female"
        else "Gender not found"
        end
      #binding.pry
    end
    #------------------------------------------

    # Returns address of pigeons
      data[:lives].each do |key, value|
      pigeon_array.map do |name2|
        if value.include?(name2)
        pigeon_list[name2][:lives] << key.to_s
      end
      end
    end
    pigeon_list
end
