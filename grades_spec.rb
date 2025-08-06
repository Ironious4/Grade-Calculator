require_relative 'grades'

RSpec.describe "Grade Calculator" do
  it "returns correct grades for multiple marks" do
    test_cases = {
      "95" => "Grade: A",
      "85" => "Grade: B",
      "75" => "Grade: C",
      "65" => "Grade: D",
      "50" => "Grade: F"
    }

    test_cases.each do |input_marks, expected_output|
      expect(calculate_grade(input_marks)).to eq(expected_output)
    end
  end

  it "handles boundary values correctly" do
    boundary_cases = {
      "90" => "Grade: A",
      "89" => "Grade: B",
      "80" => "Grade: B",
      "79" => "Grade: C",
      "70" => "Grade: C",
      "69" => "Grade: D",
      "60" => "Grade: D",
      "59" => "Grade: F",
      "0"  => "Grade: F",
      "100" => "Grade: A"
    }

    boundary_cases.each do |input_marks, expected_output|
      expect(calculate_grade(input_marks)).to eq(expected_output)
    end
  end

  it "shows an error message for out-of-range numbers" do
    invalid_inputs = ["-5", "101", "500"]

    invalid_inputs.each do |input_marks|
      expect(calculate_grade(input_marks)).to include("Invalid input")
    end
  end

  it "returns Grade F for non-numeric input" do
    expect(calculate_grade("hello")).to eq("Grade: F")
  end
end
