puts "🌱 Seeding spices..."

Student.destroy_all
Meangirl.destroy_all
Comment.destroy_all

puts "Creating students..."
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Art freak",
    yearbook_photo: './images/1.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Nerd",
    yearbook_photo: './images/2.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Burnout",
    yearbook_photo: './images/3.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Ugly cheerleader",
    yearbook_photo: './images/4.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Desperate wannabe",
    yearbook_photo: './images/5.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Freshmen",
    yearbook_photo: './images/6.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Girl who eats her feelings",
    yearbook_photo: './images/14.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "JV Jock",
    yearbook_photo: './images/8.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Prep",
    yearbook_photo: './images/12.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Asexual bank geek",
    yearbook_photo: './images/27.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "ROTC fanatic",
    yearbook_photo: './images/15.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Sexually active band geek",
    yearbook_photo: './images/36.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Unfriendly hottie",
    yearbook_photo: './images/16.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Mathlete",
    yearbook_photo: './images/32.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Asexual band geek",
    yearbook_photo: './images/20.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Desperate wannabe",
    yearbook_photo: './images/21.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Manga fanatic",
    yearbook_photo: './images/22.svg',
    year: 12
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Gamer geek",
    yearbook_photo: './images/23.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Computer nerd",
    yearbook_photo: './images/24.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Sexually active band geek",
    yearbook_photo: './images/25.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Desperate wannabe",
    yearbook_photo: './images/26.svg',
    year: 10
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Mathlete",
    yearbook_photo: './images/13.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "J.V. Jock",
    yearbook_photo: './images/28.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Girls who eats her feelings",
    yearbook_photo: './images/29.svg',
    year: 11
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Dumb cheerleader",
    yearbook_photo: './images/30.svg',
    year: 9
)
Student.create(
    name: Faker::FunnyName.two_word_name,
    type_of_uncool: "Burnout",
    yearbook_photo: './images/31.svg',
    year: 10
)


puts "Creating meangirls..."
Meangirl.create(
    name: "Regina George",
    number_of_parties: 75,
    headshot_photo:'./images/Regeina George.svg',
    superlative: "The Queen Bee",
    year: 11
)
Meangirl.create(
    name:"Karen Smith",
    number_of_parties: 54,
    headshot_photo: './images/Karen Smith.svg',
    superlative: "Most likely to become a weather girl",
    year: 11
)
Meangirl.create(
    name: "Gretchen Wieners",
    number_of_parties: 67,
    headshot_photo: './images/Gretchen Weiners.svg',
    superlative: "Most likely to inheret a toaster strudel fortune",
    year: 11
)
Meangirl.create(
    name: "Cady Heron",
    number_of_parties: 3,
    headshot_photo: './images/Cady Heron (2).svg',
    superlative: "Most likely to become a rocket scientist",
    year: 11
)


puts "Creating comments..."

Comment.create(
    student_id: Student.ids[0],
    meangirl_id: Meangirl.first.id,
    comment:"Such a grotsky little byotch.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo: './images/Incrim17.svg'
)

Comment.create(
    student_id: Student.all.sample.id,
    meangirl_id: Meangirl.second.id,
    comment: "Her idea of fun is going to Taco bell.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim16.svg'
)
Comment.create(
    student_id: Student.ids[2],
    meangirl_id: Meangirl.third.id,
    comment: "She thinks she can sit with us?! The nerve!!!",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim24.svg'
)
Comment.create(
    student_id: Student.ids[3],
    meangirl_id: Meangirl.fourth.id,
    comment: "Why don't we call them Glen Coco instead? What kind of name is Glen Coco anyway?",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim15.svg'
)
Comment.create(
    student_id:Student.ids[4],
    meangirl_id: Meangirl.first.id,
    comment: "So stupid. Thinks butter is a carb.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim14.svg'
)
Comment.create(
    student_id: Student.ids[5],
    meangirl_id: Meangirl.second.id,
    comment: "Wears the ugliest effing skirt I've ever seen.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim13.svg'
)
Comment.create(
    student_id: Student.ids[6],
    meangirl_id: Meangirl.third.id,
    comment: "She like, thinks she's really pretty!?",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim12.svg'
)
Comment.create(
    student_id: Student.ids[7],
    meangirl_id: Meangirl.fourth.id,
    comment: "Made out with a hot dog? Oh my God that was way more than one time!",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim11.svg'
)
Comment.create(
    student_id: Student.ids[8],
    meangirl_id: Meangirl.first.id,
    comment: "Oh my God, Danny DeVito, I love your work!",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim23.svg'
)
Comment.create(
    student_id: Student.ids[9],
    meangirl_id: Meangirl.second.id,
    comment: "Such a liar. 'I can't go out tonight. I'm sick.' But everyone knows ther were at the mathlete convention!",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim10.svg'
)
Comment.create(
    student_id: Student.ids[10],
    meangirl_id: Meangirl.third.id,
    comment:"Damn, what happened?",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim9.svg'
)
Comment.create(
    student_id: Student.ids[11],
    meangirl_id: Meangirl.fourth.id,
    comment: "Grool. I guess.",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim8.svg'
)
Comment.create(
    student_id: Student.ids[12],
    meangirl_id: Meangirl.first.id,
    comment: "Hair so big it's full of secrets.",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim7.svg'
)
Comment.create(
    student_id: Student.ids[13],
    meangirl_id: Meangirl.first.id,
    comment: "Loser.",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim6.svg'
)
Comment.create(
    student_id: Student.ids[14],
    meangirl_id: Meangirl.second.id,
    comment: "Such mom energy",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim5.svg'
)
Comment.create(
    student_id: Student.ids[15],
    meangirl_id: Meangirl.third.id,
    comment: "Was a sexy mouse for Halloween. What was that about?!",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim4.svg'
)
Comment.create(
    student_id: Student.ids[16],
    meangirl_id: Meangirl.fourth.id,
    comment: "Is so NOT fetch.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim3.svg'
)
Comment.create(
    student_id: Student.ids[17],
    meangirl_id: Meangirl.first.id,
    comment: "Has an amazing ability to suppress her gag reflex.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim2.svg'
)
Comment.create(
    student_id: Student.ids[18],
    meangirl_id: Meangirl.first.id,
    comment: "Takes medication for the boil on his back…side.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim22.svg'
)
Comment.create(
    student_id: Student.ids[19],
    meangirl_id: Meangirl.second.id,
    comment: "Didn't shower for a month.. during SUMMER, and to this day still hasn't washed her hair.",
    level_of_uncool:Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim21.svg'
)
Comment.create(
    student_id: Student.ids[20],
    meangirl_id: Meangirl.first.id,
    comment: "Made out with a dill pickle.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim20.svg'
)
Comment.create(
    student_id: Student.ids[21],
    meangirl_id: Meangirl.fourth.id,
    comment: "SUCH a PUSHER, a SAD OLD DRUG PUSHER.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim19.svg'
)
Comment.create(
    student_id: Student.ids[22],
    meangirl_id: Meangirl.second.id,
    comment: "A teacher's pet (excuse me, there's something on your nose!)",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo: './images/Incrim1.svg'
)
Comment.create(
    student_id: Student.ids[23],
    meangirl_id: Meangirl.third.id,
    comment: "This girl is the nastiest skank bitch I've ever met. Do not trust her. She is a fugly slut.",
    level_of_uncool: Faker::Number.within(range: 1..10),
    like: false,
    incriminating_photo:'./images/Incrim18.svg'
)

puts "✅ Done seeding!"
