from blocked_users import blocked_users

def binary_search(numbers, target):
  left = 0
  right = len(numbers) - 1

  while left <= right:
    mid = (left + right) // 2

    if numbers[mid] == target:
      return mid
    elif numbers[mid] < target:
      left = mid + 1
    else:
      right = mid - 1

  return -1  # Target was not found


print("=== დაბლოკილი იუზერების შემოწმება (Binary Search) ===")
print("სულ დაბლოკილი იუზერები:", len(blocked_users))

target = int(input("შეიყვანე შესამოწმებელი იუზერის ID: "))

result = binary_search(blocked_users, target)

if result == -1:
  print(
      f"\n\033[92mშედეგი: ID {target} არ არის დაბლოკილი (აქტიურია) (✓)\033[0m"
  )
else:
  print(
      f"\n\033[91mშედეგი: ID {target} არის დაბლოკილი სიაში! (ინდექსი:"
      f" {result}) (✘)\033[0m"
  )