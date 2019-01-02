def get_grade(grade1, grade2, grade3)
  average = (grade1 + grade2 + grade3) / 3
  return 'A' if average >= 90
  return 'B' if average >= 80
  return 'C' if average >= 70
  return 'D' if average >= 60
  'F'
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"