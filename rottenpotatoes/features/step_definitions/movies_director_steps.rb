Given /^the following movies exist:$/ do |table|
    table.hashes.each do |hash|
        Movie.create! (hash)
    end
end

Then /^the director of "Alien" should be "Ridley Scott"$/ do
    steps ( %Q(
        Then I should be on the show page of "Alien"
        Then I should see "Director"
        Then I should see "Ridley Scott"
    ))
end