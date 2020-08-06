raul = User.create(bio: "I <3 coding!", image_url: "https://avatars2.githubusercontent.com/u/15642008?s=460&u=6fffd7f740b3082be3f6fa0a171b1a47cf22eaeb&v=4", email: "raulsposito@gmail.com", password: "123")

jessica = User.create(bio: "Hot UX/UI Designer.", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSTyxPEIvOdjXF1XC7BJHNqi9OIwqGYtMt-Zw&usqp=CAU", email: "justojdp@gmail.com", password: "123")


Job.create(title: "Clean up the bathroom.", image_url: "https://images.victorianplumbing.co.uk/images/ALPSFS_nl.jpg", description: "It should look like the one on the pic.", user_id: raul.id)

