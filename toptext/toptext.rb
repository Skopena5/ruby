def signs(text)
	array = text.downcase.chars

	index = 0
	while index < array.length
		if array[index] == "," || array[index] == "." || array[index] == "..." || array[index] == "/"
			array.delete_at(index)	
		end
		index += 1
	end

	array = array.join.split(" ")
	index = 0
	while index < array.length
		if array[index] == "a" || array[index] == "on" || array[index] == "of" || array[index] == "an"
			array.delete_at(index)	
		end
		index += 1
	end

	return array
end

def sort(array)
	array = array.sort
	index = 0
	while index < array.length
		if array[index] == array[index+1]
			index += 1
		elsif array[index+1] == array[index+2]
			index += 1
		else 	
			array.delete_at(index+1)
		end
	end
	return array
end

def count_words(words)
  words.each_with_object(Hash.new 0) do |word, counter|
    counter[word] += 1
  end
end

def print_counts(words)
  count_words(words).each do |word, count|
    puts "#{word}: #{count}"
  end
end


text = "In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income."

array = signs(text)
array_new = sort(array)
print_counts(array_new)