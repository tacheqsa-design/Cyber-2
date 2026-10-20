# ვამოწმებთ ფაილი არსებობს, თუ არა
if not os.path.exists("log.txt"):
    with open("log.txt", "w") as f:
        f.write("Initial log created.\n")

# Reading
with open("log.txt", "r") as f:
    data = f.read()
print(data)

# Writing (ქმნის ან გადააწერს არსებულს)
with open("report.txt", "w") as f:
    f.write("Suspicious activity detected.\n")

# Appending (ქმნის ან ამატებს არსებულს)
with open("report.txt", "a") as f:
    f.write("Added more info.\n")
with open("inputs.txt", "r") as f:
    data = list(map(int, f.read().split()))

print(data)  # [5, 7, 1, 2, 3, 4, 5]
მთლიანი ფაილის წაკითხვა
with open("inputs.txt", "r") as f:
    #პირველ ხაზზე ორი რიცხვი
    n, x = map(int, f.readline().split())
    arr = list(map(int, f.readline().split()))

print(n, x)   # e.g. 5 7
print(arr)    # e.g. [1, 2, 3, 4, 5]


with open("inputs.txt", "r", encoding="utf-8") as f:
    saxeli = f.read().strip()

with open("output.txt", "w", encoding="utf-8") as f:
    f.write(f"გამარჯობა, {saxeli}")