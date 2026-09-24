class_name ArrayUtil

static func previous_element(array: Array, index: int):
	if index <= 0:
		return array[array.size() - 1]
	
	return array[index - 1]

static func next_element(array: Array, index: int):
	if index >= array.size() - 1:
		return array[0]
	
	return array[index + 1]