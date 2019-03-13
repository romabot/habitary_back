User.destroy_all 
Day.destroy_all 
Skill.destroy_all 
Dayskill.destroy_all 

user_1 = User.create(name: "Jim Jones")

day_1 = Day.create(name:"Day 1", user_id:1)

skill_1 = Skill.create(name: "Meditation")

dayskill_1 = Dayskill.create(name: "Dayskill 1" ,day_id:1, skill_id: 1,)






puts "SEEDED!!✨ ⭐️ 🌈 🐶 ✨"
