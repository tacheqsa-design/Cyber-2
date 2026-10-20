t = 10
books = [2, 3, 4, 1, 6]

books.sort()  # [1, 2, 3, 4, 6]

count = 0
total_time = 0

for hours in books:
    if total_time + hours <= t:
        total_time += hours
        count += 1
        print(f"book {hours}h -> total {total_time}h, count {count}")
    else:
        print(f"book {hours}h does not fit -> stop")
        break
