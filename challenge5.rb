# Start with an array of travel destinations.
# Print every travel destination in alphabetical order embedded in a sentence using string interpolation.
# For example, if the destination is "New York City", print something like "The next place I want to visit is New York City!"

# goal: Print every travel destination in alphabetical order embedded in a sentence using string interpolation.

# function takes an array of strings
def travel_destinations(destinations)
  # sort alphabetically
  # print string interpolation into sentence
  destinations.sort!.each { |dest| p "#{dest} is lit" }
end

travel_destinations(["New York", "Phoenix", "Del Norte", "Denver", "Torrance"])
