# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
buses = Bus.create([
  {name: 'Green Bus', twitter_regex: (/green/i).to_s},
  {name: 'Purple Bus', twitter_regex: (/purple/i).to_s},
  {name: 'Red Bus', twitter_regex: (/red/i).to_s},
  {name: 'Gold Bus', twitter_regex: (/gold/i).to_s},
  {name: 'Brown Bus', twitter_regex: (/brown/i).to_s},
  {name: 'Teal Bus', twitter_regex: (/teal/i).to_s},
  {name: 'Triangle Bus', twitter_regex: (/triangle/).to_s},
  {name: 'Grey Bus', twitter_regex: (/gr[ea]y/i).to_s},
  {name: 'Pink Bus', twitter_regex: (/pink/i).to_s},
  {name: 'Orange Bus', twitter_regex: (/orange/i).to_s},
  {name: 'Lucas Bus (both)', twitter_regex: (/lucas/i).to_s},
  {name: "Kid's Ed Bus", twitter_regex: (/kid'?s/i).to_s},
  {name: "ICC Bus", twitter_regex: (/icc/i).to_s},
  {name: "Skate Ranch Bus", twitter_regex: (/skate/i).to_s}
  ])
