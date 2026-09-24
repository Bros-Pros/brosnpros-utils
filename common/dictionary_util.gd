class_name DictionaryUtil

## Flattens a dictionary into a single array[br]
## Requires the dictionary to have [Array] as value type
static func flatten(dictionary: Dictionary) -> Array:
	if dictionary.size() == 0: return []

	if typeof(dictionary.get(dictionary.keys()[0])) != Variant.Type.TYPE_ARRAY:
		printerr("flatten: Dictionary values are not an array")
		return []

	var flattened_dictionary: Array = []
	for key in dictionary:
		var value: Array = dictionary[key]
		flattened_dictionary.append_array(value)

	return flattened_dictionary