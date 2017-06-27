# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!([
  {name: "Adam", email: "adamin@gmail.com", password_digest: BCrypt::Password.create('aaaaaaaa')},
  {name: "Ben", email: "ben@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Amy", email: "amy@gmail.com", password_digest: BCrypt::Password.create('aaaaaaaa')},
  {name: "Sara", email: "sara@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Charlie", email: "charlie@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Don", email: "don@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Barbara", email: "barbara@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Cathy", email: "cathy@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Delores", email: "delores@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Mary", email: "mary@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Jose", email: "jose@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Juan", email: "juan@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Manuel", email: "manuel@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Erik", email: "erik@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Joe", email: "joe@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Alicia", email: "alicia@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Jimmy", email: "jimmy@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Donna", email: "donna@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Leslie", email: "leslie@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Joan", email: "joan@gmail.com", password_digest: BCrypt::Password.create('a')},
  {name: "Liz", email: "liz@gmail.com", password_digest: BCrypt::Password.create('a')},
  ])

Quest.create!([
  {name: "Wynwood Quest",
    description: "This quest will take you around Wynwood to find things you never knew were there!",
    start: "2017-06-24 1:30:00",
    user_id: 1,
    invite_msg: "Are you ready for some adventure?! Well, charge up your phone and make sure you have plenty of memory to take some gorgeous photos as you explore Wynwood to complete
    this quest. You won't need anything special for this quest- just your smartphone, comfortable shoes, and money if you want to grab a snack along the way. I had fun making this-
    I hope you have fun completing it!!! The quest will start at Jose De Diego Middle School at 3100 NW 5th Ave (There's free parking there! You're welcome!).",
    start_msg: "It's GO TIME! Make sure you take a photo or selfie at each task and along the way. Post your images to your IG account using #WynwoodQuest and #AmazingQuest so I can
    track your progress. The rules are, you must submit an answer for each quest to move on to the next one. You will receive a few clues along the way (again, you're welcome!) but if
    you really get stumped you can skip a task. If you get really stuck- call or text me! Good Luck!",
    final_msg: "Great job on the Quest! Don't forget to upload your pics with #WynwoodQuest and #AmazingQuest. Now that you are done- head to the Wynwood Yard at 56 NW 29th St and look
    for me- I'll be waiting for you there!"},
  {name: "Amy's 30th Birthday Adventure ",
    description: "This quest will celebrate Amy's 30th birthday in style!",
    start: "2017-07-15 19:30:00",
    user_id: 2,
    invite_msg: "We will meet at Amy's place and Uber from there together. We won't be doing anything crazy (well, we might after the 3rd Task!) but we won't be walking too far, so
    be sure to style it up for a night of drinks, food, dancing (on the table is optional) and adventure!",
    start_msg: "Have fun Questing!",
    final_msg: "Great job on the Quest!"},
  {name: "Joe's South Beach Bachelor Party",
    description: "It's Joe's last chance for freedom!",
    start: "2017-07-07 19:00:00",
    user_id: 5,
    invite_msg: "You know the drill...it's going to be epic! We'll meet up at the W South Beach (2201 Collins Ave) by 7pm and pre-game a bit before we head out.",
    start_msg: "Have fun Questing!",
    final_msg: "Great job on the Quest!"},
  {name: "Sara's Bachelorette Party!",
    description: "Girls Night Out!!!",
    start: "2017-07-22 20:30:00",
    user_id: 3,
    invite_msg: "Okay, ladies- let's have some fun with Sara before the wedding!!! We have a suite at Loews Miami Beach Hotel (1601 Collins Ave) so we'll gather there before we head
    out. Make sure you RSVP on the Facebook invite. If you have any questions, just text me!",
    start_msg: "Have fun Questing!",
    final_msg: "Great job on the Quest!"},
  {name: "Rainy Day Kids Quest",
    description: "Just because it's raining doesn't mean we can't have fun!!!",
    start: "2017-07-02 10:30:00",
    user_id: 1,
    invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  {name: "Quest6", description: "Quest6 of awesomeness", start: "2017-07-04 17:30:00", user_id: 6, invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  {name: "Quest7", description: "Quest7 of awesomeness", start: "2017-07-04 18:30:00", user_id: 7, invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  {name: "Quest8", description: "Quest8 of awesomeness", start: "2017-07-04 19:30:00", user_id: 8, invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  {name: "Quest9", description: "Quest9 of awesomeness", start: "2017-07-04 20:30:00", user_id: 9, invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  {name: "Quest10", description: "Quest10 of awesomeness", start: "2017-07-04 21:30:00", user_id: 10, invite_msg: "Get ready for the quest!", start_msg: "Have fun Questing!", final_msg: "Great job on the Quest!"},
  ])

Task.create!([
  {name: "Stranger Things",
    description: "Head south on NW 5th until you reach NW 28th Street and turn east. Continue down that street until you find the building with the ginormous safety pin sticking out
    of it. When you find it, take a selfie with the safety pin and post it to IG with #StrangerThings. Enter the name of the cafe as the answer to move on to your next task.",
    answer: "Brothers & Brawlers",
    quest_id: 1,
    clue1: "It's on the north side of the street.",
    clue2: "The building is solid black. If you see stripes- you've gone too far.",
    clue3: "The name is something like Siblings & Strikers.",
    clue_timer: 2,
    answer_check: true,
    answer_comment: "Awesome! You got it! This place is cool...head inside to check it out before you head on to your next task if you want.",
    skip_comment: "Really- this early in the quest you are already being lazy?! This is soooooo simple!!!!"},
  {name: "Colors Everywhere!!!",
    description: "This next task will not be quite so easy. To solve this next task, you'll need to figure out where to go next. Somewhere in Wynwood is a location where you'll trip
    over tourists any day of the year. It's a very colorful place that changes from time-to-time. Head there and enter the name of the location to proceed to your next task.",
    answer: "Wynwood Walls",
    quest_id: 1,
    clue1: "It's southeast of your current location.",
    clue2: "The name is an alliteration like 'Wild Wild West'.",
    clue3: "It's right next to the Wynwood Kitchen!",
    clue_timer: 2,
    answer_check: false,
    answer_comment: "Ya- that was another easy one. Take some time to wander around and take some pics here. It's a really neat place with a gift shop!",
    skip_comment: "Ugh! This is an easy one to quit on...why are you quitting so easily?!"},
  {name: "Oxymorons All Around",
    description: "For your next task we're going to treat you to a type of art that many don't often associate with Wynwood or South Florida. To pass this next task, you'll need to figure
    out where to go and answer a question. Not far from where you are now, is a place that has a drink named after a curious collection of houses a mile off the Florida coast. Find the
    location and enter the name of that drink to move on to your next task. If you get to this location before the top of the hour, you can go on a free tour!",
    answer: "Stiltsville Pilsner",
    quest_id: 1,
    clue1: "Drink Art, Make Beer!",
    clue2: "Circus clowns walk on these.",
    clue3: "Look south of Key Biscayne on Google Maps!",
    clue_timer: 1,
    answer_check: false,
    answer_comment: "Awesome! Enjoy a cold drink while you are here!!! One more task to go!",
    skip_comment: "Why would you quit on this one?! It's fun!!!"},
  {name: "Task4",
    description: "Task 4 of Quest 1",
    answer: "Task Answer",
    quest_id: 2,
    clue1: "Something Witty to Help You!",
    clue2: "Something sarcastic to anger you!",
    clue3: "Something snarky to really piss you off!",
    clue_timer: 2,
    answer_check: false,
    answer_comment: "Great job!",
    skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 1", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 2", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 2", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 2", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task4", description: "Task 4 of Quest 2", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 2", answer: "Task Answer", quest_id: 2, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 3", answer: "Task Answer", quest_id: 3, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 3", answer: "Task Answer", quest_id: 3, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 3", answer: "Task Answer", quest_id: 3, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task4", description: "Task 4 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task6", description: "Task 6 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task7", description: "Task 7 of Quest 4", answer: "Task Answer", quest_id: 4, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 5", answer: "Task Answer", quest_id: 5, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 5", answer: "Task Answer", quest_id: 5, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 5", answer: "Task Answer", quest_id: 5, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task4", description: "Task 4 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task6", description: "Task 6 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task7", description: "Task 7 of Quest 6", answer: "Task Answer", quest_id: 6, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 7", answer: "Task Answer", quest_id: 7, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 7", answer: "Task Answer", quest_id: 7, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 7", answer: "Task Answer", quest_id: 7, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task4", description: "Task 4 of Quest 7", answer: "Task Answer", quest_id: 7, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 7", answer: "Task Answer", quest_id: 7, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 8", answer: "Task Answer", quest_id: 8, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 8", answer: "Task Answer", quest_id: 8, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 8", answer: "Task Answer", quest_id: 8, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task4", description: "Task 4 of Quest 8", answer: "Task Answer", quest_id: 8, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task5", description: "Task 5 of Quest 8", answer: "Task Answer", quest_id: 8, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 9", answer: "Task Answer", quest_id: 9, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 9", answer: "Task Answer", quest_id: 9, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 9", answer: "Task Answer", quest_id: 9, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task1", description: "Task 1 of Quest 10", answer: "Task Answer", quest_id: 10, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task2", description: "Task 2 of Quest 10", answer: "Task Answer", quest_id: 10, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  {name: "Task3", description: "Task 3 of Quest 10", answer: "Task Answer", quest_id: 10, clue1: "Something Witty to Help You!", clue2: "Something sarcastic to anger you!", clue3: "Something snarky to really piss you off!", clue_timer: 2, answer_check: false, answer_comment: "Great job!", skip_comment: "Quitter!"},
  ])

Role.create!([
  {role: true, user_id: 1, quest_id: 1},
  {role: false, user_id: 2, quest_id: 1},
  # {role: false, user_id: 3, quest_id: 1},
  {role: false, user_id: 4, quest_id: 1},
  {role: true, user_id: 2, quest_id: 2},
  {role: false, user_id: 3, quest_id: 2},
  {role: false, user_id: 1, quest_id: 2},
  {role: false, user_id: 4, quest_id: 2},
  {role: true, user_id: 5, quest_id: 3},
  {role: false, user_id: 1, quest_id: 3},
  {role: false, user_id: 2, quest_id: 3},
  {role: false, user_id: 6, quest_id: 3},
  {role: false, user_id: 11, quest_id: 3},
  {role: false, user_id: 12, quest_id: 3},
  {role: true, user_id: 10, quest_id: 4},
  {role: false, user_id: 4, quest_id: 4},
  {role: false, user_id: 3, quest_id: 4},
  {role: false, user_id: 7, quest_id: 4},
  {role: false, user_id: 8, quest_id: 4},
  {role: false, user_id: 9, quest_id: 4},
  {role: true, user_id: 1, quest_id: 5},
  {role: false, user_id: 16, quest_id: 5},
  {role: false, user_id: 17, quest_id: 5},
  {role: true, user_id: 9, quest_id: 6},
  {role: false, user_id: 7, quest_id: 6},
  {role: false, user_id: 14, quest_id: 6},
  {role: false, user_id: 15, quest_id: 7},
  {role: true, user_id: 13, quest_id: 7},
  {role: false, user_id: 14, quest_id: 8},
  {role: false, user_id: 10, quest_id: 8},
  {role: true, user_id: 11, quest_id: 8},
  {role: false, user_id: 12, quest_id: 9},
  {role: true, user_id: 10, quest_id: 9},
  {role: true, user_id: 12, quest_id: 10},
  {role: false, user_id: 8, quest_id: 10},
  ])
