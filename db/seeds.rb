users = [
    {name: "Raul", bio: "I <3 coding!", image_url: "https://avatars2.githubusercontent.com/u/15642008?s=460&u=6fffd7f740b3082be3f6fa0a171b1a47cf22eaeb&v=4", email: "raulsposito@gmail.com", password: "123"},
    {name: "Jessica", bio: "Hot UX/UI Designer.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTyxPEIvOdjXF1XC7BJHNqi9OIwqGYtMt-Zw&usqp=CAU", email: "justojdp@gmail.com", password: "123"}
]

users.each do |u|
    User.create(u)
end

jobs = [
    {title: "Clean up the bathroom.", image_url: "https://images.victorianplumbing.co.uk/images/ALPSFS_nl.jpg", description: "It should look like the one on the pic.", user_id: 1},
    {title: "Clean the messy kitchen up.", image_url: "https://c8.alamy.com/comp/P4JF7J/dirty-dark-kitchen-in-an-old-beggars-house-a-grim-abstract-scene-about-poverty-and-housing-problems-P4JF7J.jpg", description: "Still a mess", user_id: 1}
]

jobs.each do |i|
    Job.create(i)
end

#User.create(name: "Raul", bio: "I <3 coding!", image_url: "https://avatars2.githubusercontent.com/u/15642008?s=460&u=6fffd7f740b3082be3f6fa0a171b1a47cf22eaeb&v=4", email: "raulsposito@gmail.com", password: "123")
#
#User.create(name: "Jessica", bio: "Hot UX/UI Designer.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTyxPEIvOdjXF1XC7BJHNqi9OIwqGYtMt-Zw&usqp=CAU", email: "justojdp@gmail.com", password: "123")
#
#
#Job.create(title: "Clean up the bathroom.", image_url: "https://images.victorianplumbing.co.uk/images/ALPSFS_nl.jpg", description: "It should look like the one on the pic.", user_id: user.first.id)
#
#Job.create(title: "Clean the messy kitchen up.", image_url: "https://c8.alamy.com/comp/P4JF7J/dirty-dark-kitchen-in-an-old-beggars-house-a-grim-abstract-scene-about-poverty-and-housing-problems-P4JF7J.jpg", description: "Still a mess", user_id: user.first.id)