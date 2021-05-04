nfl_roster = { "Tom Brady" => "Tampa Bay Buccaneers",
                "Andy Dalton" => "Chicago Bears",
                "Darnel Mooney" => "Chicago Bears"}

nba_roster = {"Cleveland Cavaliers" => ["LeBron James", "Kevin Love", "Kyrie Irving"],
              "Golden State Warriors" => ["Sephen Curry", "Klay Thompson", "Kevin Durant"]}

p nfl_roster
p nfl_roster["Andy Dalton"]
p nba_roster["Cleveland Cavaliers"]
p nfl_roster["Paul Dennis"]


person = {:name => "Paul", :sex => "Male", :handsome => true,
          :languages => ["C#", "JavaScript", "SQL", "PHP", "Ruby"]}

p person[:name]

person = {name: "Paul",
          age: 38,
          handsome: true,
          languages: ["C#", "Ruby"]}

p person[:name]
p person[:age]
p person[:handsome]
