
# User seed #########################################
#####################################################
User.destroy_all

u1 = User.create! name: "Luke",  email: "luke@ga.co",  password: "chicken"
u2 = User.create! name: "Jamil", email: "jamil@ga.co", password: "chicken"
u3 = User.create! name: "Nemo",  email: "nemo@ga.co",  password: "chicken"
u4 = User.create! name: "Zara",  email: "zara@ga.co",  password: "chicken"
u5 = User.create! name: "Alex",  email: "alex@ga.co",  password: "chicken"
u6 = User.create! name: "Rocky", email: "rocky@ga.co", password: "chicken"
u7 = User.create! name: "Ahmed", email: "ahmed@ga.co", password: "chicken"
u8 = User.create! name: "Hays",  email: "hays@ga.co",  password: "chicken"
u9 = User.create! name: "Tony",  email: "tony@ga.co",  password: "chicken"

# puts "Created #{User.count} users."

# Venue seed ##########################################
#######################################################
Venue.destroy_all

v1 = Venue.create! name: "Ivy",    address: "123 Fake Street"
v2 = Venue.create! name: "White",  address: "159 Low Street"
v3 = Venue.create! name: "Mirror", address: "1473 High Street"
v4 = Venue.create! name: "Omnia",  address: "827 Loud Street"

# puts "Created #{Venue.count} venues."

# Incident seed #######################################
#######################################################
Incident.destroy_all

i1 = Incident.create! date: DateTime.new(2020,10,1, 11,0,0, "+10:00"), location: "front door", incident_type: "refusal of entry", incident_details: "caucasian male, approximately 30 years old, wearing a blue suit was refused entry due to intoxication.", witness_details: "Jamil", reported_to: "manager", reported_by: "Nemo", venue_id: v1.id, user_id: u2.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."
i2 = Incident.create! date: DateTime.new(2020,10,2, 11,0,0, "+10:00"), location: "side door", incident_type: "refusal of entry", incident_details: "middle eastern male, approximately 18 years old, wearing blue jeans and a white shirt was refused entry as he did not have ID.", witness_details: "Alex", reported_to: "manager", reported_by: "Ahmed", venue_id: v2.id, user_id: u7.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."
i3 = Incident.create! date: DateTime.new(2020,10,3, 11,0,0, "+10:00"), location: "main bar", incident_type: "removal of patron", incident_details: "Asian male, approximately 40 years old, wearing a grey suit was asked to leave due to intoxication.", witness_details: "Hays", reported_to: "manager", reported_by: "Tony", venue_id: v2.id, user_id: u9.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."
i4 = Incident.create! date: DateTime.new(2020,10,4, 11,0,0, "+10:00"), location: "front door", incident_type: "refusal of entry", incident_details: "caucasian female, approximately 30 years old, wearing a red dress was refused entry due to intoxication.", witness_details: "Rocky", reported_to: "manager", reported_by: "Zara", venue_id: v3.id, user_id: u4.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."
i5 = Incident.create! date: DateTime.new(2020,10,5, 11,0,0, "+10:00"), location: "front door", incident_type: "refusal of entry", incident_details: "caucasian male, approximately 30 years old, wearing black jeans and a blue shirt was refused entry due to intoxication.", witness_details: "Nemo", reported_to: "manager", reported_by: "Jamil", venue_id: v1.id, user_id: u2.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."
i6 = Incident.create! date: DateTime.new(2020,10,6, 11,0,0, "+10:00"), location: "female toilet", incident_type: "slip and fall", incident_details: "caucasian female, approximately 25 years old, wearing a blue jumpsuit slipped on the wet floor and fell. Minor scratch on knee. She refused offer for first aid and ambulance.", witness_details: "Tony", reported_to: "manager", reported_by: "Hays", venue_id: v4.id, user_id: u8.id, poi_details: "Snitch", follow_up_actions: "Refused first aid. Taxi called. Water provided."

# puts "Created #{Incident.count} incidents."


# Associations between venue and user ################
v1.guards << u2 << u3 << u5 << u7
v2.guards << u2 << u3 << u7 << u9
v3.guards << u1 << u4 << u6
v4.guards << u1 << u2 << u3 << u8

# Associations between incidents and venues ##########
v1.incidents << i1 << i5
v2.incidents << i2 << i3
v3.incidents << i4
v4.incidents << i6

# Associations betweem users and incidents ###########
u2.incidents << i1 << i5
u7.incidents << i2
u9.incidents << i3
u4.incidents << i4
u8.incidents << i6



# puts "Testing associations:"
# print "Incidents at #{Venue.last.name}:"
# puts Venue.last.incidents.pluck(:incident_type).join(', ')
