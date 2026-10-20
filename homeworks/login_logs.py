import json
import os

current_dir = os.path.dirname(os.path.abspath(__file__))
file_path = os.path.join(current_dir, "users.json")

with open(file_path, "r", encoding="utf-8") as file:
    users = json.load(file)

for user in users:
    name = user.get("name", "უცნობი")
    age = user.get("age", 0)

    if age >= 18:
        status = "success"
    else:
        status = "fail"

    print(f"მომხმარებელი: {name}, ასაკი: {age} -> სტატუსი: {status}")


