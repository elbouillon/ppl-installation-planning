t1 = Team.create(name: "Agran 1")
t2 = Team.create(name: "Agran 2")
t3 = Team.create(name: "Agran 3")
t4 = Team.create(name: "PPL")
t5 = Team.create(name: "JPC 1")
t6 = Team.create(name: "JPC 2")
t7 = Team.create(name: "Arifi")

p1 = Project.create name: "Villa Barroso, Denges", planned: 5, state: :open, delivery_on: 3.weeks.ago.to_date
p2 = Project.create name: "Villa Ding, Romainmotier", planned: 3, state: :closed, delivery_on: 6.weeks.ago.to_date
p3 = Project.create name: "Villa Barreiros, Epalinges", planned: 3, state: :open, delivery_on: 3.weeks.from_now.to_date

t1.installations.create do |i|
  i.start_on = 2.weeks.ago.to_date
  i.end_on = i.start_on + 2.days
  i.description = "Montage des fenetres"
  i.project = p1
end

t7.installations.create do |i|
  i.start_on = 5.weeks.ago.to_date
  i.end_on = 4.weeks.ago.to_date
  i.description = "Montage"
  i.project = p2
end

t7.installations.create do |i|
  i.start_on = 5.days.ago.to_date
  i.end_on = 4.days.ago.to_date
  i.description = "Installation rv d'eau et reglages"
  i.project = p2
end

t2.installations.create do |i|
  i.start_on = 4.weeks.from_now.to_date
  i.end_on = i.start_on + 3.days
  i.description = "Montage"
  i.project = p3
end

# installation a planifier = sans dates
t2.installations.create do |i|
  i.description = "Installation rv d'eau et reglages"
  i.project = p3
end
# travail sans projet egalement possible
t4.installations.create do |i|
  i.description = "Reparer chez Humair"
end
