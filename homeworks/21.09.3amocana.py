def creative_hash(text):
  hash_value = 0
  text_length = len(text)

  for index, char in enumerate(text):
    ascii_code = ord(char)

    position = index + 1

    step_value = ascii_code * position
    hash_value = hash_value + step_value


  hash_value = hash_value + text_length

  return hash_value


my_text = "Cyber2026"
result = creative_hash(my_text)

print(f"საწყისი ტექსტი: {my_text}")
print(f"ჩვენი კრეატიული ჰეშ-კოდი: {result}")