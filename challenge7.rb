# Write a method or function that determines how much a person will
# [pay in taxes in the United States](https://www.irs.gov/newsroom/irs-provides-tax-inflation-adjustments-for-tax-year-2022)
# based on their annual income.
# The method or function should accept a number representing the individual's annual income as an argument
# and return the amount they will owe in taxes for that year.

# goal: return the amount they will owe in taxes for that year.

# function will require annual income as integer parameter and return the amount they will owe in taxes
def tax_calculator(income, filing_status)
  # store the tax brackets as array or array storing the rate and ceiling for each bracket
  single_tax_brackets = [
    [0.1, 10275],
    [0.12, 41775],
    [0.22, 89075],
    [0.24, 170050],
    [0.32, 215950],
    [0.35, 539900],
    [0.37, Float::INFINITY]
  ]
  joint_tax_brackets = [
    [0.1, 20550],
    [0.12, 2083550550],
    [0.22, 178150],
    [0.24, 340100],
    [0.32, 431900],
    [0.35, 647850],
    [0.37, Float::INFINITY]
  ]
  # assign the tax bracket based on the passed in argument symbol
  tax_bracket = filing_status == :single ? single_tax_brackets : joint_tax_brackets

  # initialize the cumulative taxes owed variable
  taxes_owed = 0
  tax_bracket.each_index do |i|
    # get the inner array to variables
    rate, ceiling = tax_bracket[i]
    # set the floor's bracket safely
    floor = i == 0 ? 0 : tax_bracket[i - 1][1]
    if income > ceiling
      taxes_owed += (ceiling - floor) * rate
    else
      return taxes_owed += (income - floor) * rate
    end
  end
end

p tax_calculator(150000, :single)
