apr = nil
loan_years = nil
loan_amount = nil

def valid_number?(num)
  if num.to_f > 0 && num.empty? == false
    true
  else
    false
  end
end

# Ask loan amount
loop do
  loop do
    puts "Enter the loan amount:"
    loan_amount = gets.chomp

    break if valid_number?(loan_amount)
    puts "Invalid number. Please enter a non-zero positive number."
  end

  # Ask the Annual Percentage Rate
  loop do
    puts "Enter the Annual Percentage Rate (APR):"
    apr = gets.chomp

    break if valid_number?(apr)
    puts "Invalid APR. Please enter a non-zero postive number ex: 1 for 1%"
  end

  # Ask the loan duration
  loop do
    puts "Enter the Loan Duration in Years"
    loan_years = gets.chomp

    break if valid_number?(loan_years)
    puts "Invalid Loan Duration. Please enter a non-zero positive number ex: 5, 10, 20"
  end

  # Calculate the Monthly Interest Rate
  mpr = apr.to_f / 12 / 100
  # Calculate the Loan Duration in Months
  loan_months = loan_years.to_f * 12
  # Calculate the Monthly Payment
  monthly_payment = loan_amount.to_f * (mpr / (1 - (1 + mpr)**(-loan_months)))

  puts "The monthly payment is $#{format('%0.2f', monthly_payment)}!"
  puts "Want to calculate another mortgage? (y/n)"
  break if gets.chomp.downcase != "y"
end
