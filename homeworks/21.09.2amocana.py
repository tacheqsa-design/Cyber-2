def simple_hash(text):
  # 1. ვქმნით ცვლადს, სადაც ჯამს შევინახავთ (თავიდან არის 0)
  total_sum = 0

  # 2. სათითაოდ ვიღებთ თითოეულ სიმბოლოს ტექსტიდან
  for char in text:
    # 3. ვიგებთ სიმბოლოს ASCII რიცხვს
    ascii_code = ord(char)

    # 4. ვუმატებთ ამ რიცხვს საერთო ჯამს
    total_sum = total_sum + ascii_code

  # 5. ვაბრუნებთ საბოლოო ჯამს
  return total_sum


# ტექსტი, რომლის ჰეშიც გვინდა
text_to_hash = "Password123"

# ფუნქციის გამოძახება
hash_result = simple_hash(text_to_hash)

# შედეგის გამოტანა ეკრანზე
print(f"დასაშიფრი ტექსტი: {text_to_hash}")
print(f"მიღებული ჰეშ-რიცხვი: {hash_result}")