trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# #1
train_direction = trains.select{ |train| train[:train]=="111"   }

train_111 = train_direction[0][:direction]

puts train_111

# #2
train_80B = trains[5][:frequency_in_minutes]

puts train_80B

# #3
train_dir = trains.select{ |train| train[:train]=="610"   }

train_610 = train_dir[0][:direction]

puts train_610

# # #4
# north_trains_info = trains.select{ |direction| direction[:direction] == "north"}
# north_trains = []
# north_trains_info.each { |name| north_trains << name[:train] }
# puts north_trains
#
#
# # #5
# east_trains_info = trains.select{ |direction| direction[:direction] == "east"}
# east_trains = []
# east_trains_info.each { |name| east_trains << name[:train] }
# puts east_trains


#6
def train_directions(direction, list)
  train_info = list.select{ |item| item[:direction] == direction }
  direction_list = []
  train_info.each { |name| direction_list << name[:train] }
  puts "These are the trains going #{direction}:\n#{direction_list}"
end

train_directions("north", trains)
train_directions("east", trains)
