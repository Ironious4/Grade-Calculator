def calculate_grade(input)
  marks = input.to_i
  return "Invalid input! Please enter a number between 0 and 100." unless marks.between?(0, 100)

  if marks >= 90
    "Grade: A"
  elsif marks >= 80
    "Grade: B"
  elsif marks >= 70
    "Grade: C"
  elsif marks >= 60
    "Grade: D"
  else
    "Grade: F"
  end
end


if __FILE__ == $PROGRAM_NAME
  while true
    print "Enter student marks (0-100) or type 'exit' to quit: "
    input = gets.chomp
    break if input.downcase == "exit"

    puts calculate_grade(input)
  end
end

