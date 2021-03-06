# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#!/bin/env ruby
# encoding: utf-8

p1 = Participant.create(first_name: "Katy", last_name: "Exline", email: "kathryn.exline@gmail.com", password: "password", subject_number: 40011 )
p1.generate_password
p1.save
p2 = Participant.create(first_name: "Jane", last_name: "Smith", email: "j@dbc.com", password: "password", subject_number: 40008 )
# p2.generate_password
# p2.save
p3 = Participant.create(first_name: "Alex", last_name: "Brett", email: "c@dbc.com", password: "password", subject_number: 40012 )
# p3.generate_password
# p3.save
p4 = Participant.create(first_name: "John", last_name: "Franks", email: "a@dbc.com", password: "password", subject_number: 40013 )
# p4.generate_password
# p4.save
p5 = Participant.create(first_name: "Judy", last_name: "Smith", email: "b@dbc.com", password: "password", subject_number: 40010 )
# p5.generate_password
# p5.save
p6 = Participant.create(first_name: "Francis", last_name: "Astonia", email: "d@dbc.com", password: "password", subject_number: 40009 )
# p6.generate_password
# p6.save
p7 = Participant.create(first_name: "Maria", last_name: "Peters", email: "e@dbc.com", password: "password", subject_number: 40014 )
# p7.generate_password
# p7.save
p8 = Participant.create(first_name: "Sunny", last_name: "Johnson", email: "f@dbc.com", password: "password", subject_number: 40015 )
# p8.generate_password
# p8.save
p9 = Participant.create(first_name: "George", last_name: "Williams", email: "g@dbc.com", password: "password", subject_number: 40016 )
# p9.generate_password
# p9.save
p10 = Participant.create(first_name: "Georgia", last_name: "Jones", email: "h@dbc.com", password: "password", subject_number: 40017 )
# p10.generate_password
# p10.save
p11 = Participant.create(first_name: "Alexis", last_name: "Brown", email: "i@dbc.com", password: "password", subject_number: 40018 )
# p11.generate_password
# p11.save
p12 = Participant.create(first_name: "Jim", last_name: "Davis", email: "z@dbc.com", password: "password", subject_number: 40019 )
# p12.generate_password
# p12.save
p21= Participant.create(first_name: "Peter", last_name: "Miller", email: "y@dbc.com", password: "password", subject_number: 40020 )
# p13.generate_password
# p13.save
p13 = Participant.create(first_name: "Mary", last_name: "Taylor", email: "l@dbc.com", password: "password", subject_number: 40021 )
# p13.generate_password
# p13.save
p14 = Participant.create(first_name: "Paul", last_name: "Anderson", email: "m@dbc.com", password: "password", subject_number: 40022 )
# p14.generate_password
# p14.save
p15 = Participant.create(first_name: "Emily", last_name: "Lyons", email: "n@dbc.com", password: "password", subject_number: 40023 )
# p15.generate_password
# p15.save
p16 = Participant.create(first_name: "Sup", last_name: "Thomas", email: "o@dbc.com", password: "password", subject_number: 40024 )
# p16.generate_password
# p16.save
p17 = Participant.create(first_name: "Anastasia", last_name: "White", email: "p@dbc.com", password: "password", subject_number: 40025 )
# p17.generate_password
# p17.save
p18= Participant.create(first_name: "Jasmine", last_name: "Harris", email: "q@dbc.com", password: "password", subject_number: 40026 )
# p18.generate_password
# p18.save
p19 = Participant.create(first_name: "Nate", last_name: "Garcia", email: "r@dbc.com", password: "password", subject_number: 40027 )
# p19.generate_password
# p19.save
p20 = Participant.create(first_name: "Clarke", last_name: "Lewis", email: "s@dbc.com", password: "password", subject_number: 40028 )
# p20.generate_password
# p20.save


c1 = Coordinator.create(first_name: "james", email: "james@dbc.com", password: "password")

c1.participants << p1
c1.participants << p2
c1.participants << p3
c1.participants << p4
c1.participants << p5
c1.participants << p6
# c1.participants << p7
# c1.participants << p8
# c1.participants << p9
# c1.participants << p10
# c1.participants << p11
# c1.participants << p12
# c1.participants << p13
# c1.participants << p14
# c1.participants << p15
# c1.participants << p16
# c1.participants << p17
# c1.participants << p18
# c1.participants << p19
# c1.participants << p20
# c1.participants << p21


# p1.questions.create(title: "Question no. 1", content: "What do you think of my first question?")
# p1.questions.create(title: "Question no. 2", content: "What do you think of my second question?")


t1 = Trial.create(number: 231138, title: "Psychlogrine", information: "Many people have suffered from the perception that their lawn is not green enough. Introducing Psychlogrine, a drug that will change that perception. After pouring thousands of dollars into chemical treatments homeowners are typically left unsatisfied. This drug will save money and give users the peace of mind they has alluded them for years.")

c1.trial_id = t1.id
c1.save

Feeling.create(emotion: "happy")
Feeling.create(emotion: "comfortable")
Feeling.create(emotion: "sad")
Feeling.create(emotion: "depressed")
Feeling.create(emotion: "sleepy")
Feeling.create(emotion: "hungry")

sub = 40009
5.times do |t|
  participant = Participant.find_by_subject_number(sub + t)

  participant.feeling = Feeling.find(rand(6) + 1)
  20.times do
    participant.feelings << Feeling.find(rand(6) + 1)
    date = Date.today - rand(1000)
    participant.feelings.last.update_attribute(:created_at, date )
  end
end


title1 = "My family doesn't understand what a trial is."

question1 = "I am getting bombarded with questions by my family about why I am participating in this trial. They are concerned that I am spending less time with them and the research is not worth it."

answer1 = "Clinical trials are a critical component of comprehensive medical care that make our lives better. Without medical research there would be no advance in the care and treatment of illness and disease. It might be helpful to speak to your family members about the neccesity of your participation to further advancements in medical care that we all rely on."

q1 = Question.create(title: title1, content: question1)
a1 = Answer.create(content: answer1)
a1.coordinator_id = c1.id
a1.save
p2.questions << q1
p2.save
q1.update_attribute(:private, false)
q1.answer = a1
q1.save
q1.answered = true
q1.save


title2 = "Known side effects."

question2 = "I can't find the documentation I recieved in phase 1 on potential side effects. I wanted to take some of this to my doctor, because I've been having indigestion frequently. We've received so much literature I can't keep it straight. Is there a website were I can get more information on the effects of the medication I am on?"

answer2 = "There certainly is a plethora of documentation that a participant has to keep track of. I've sent a email to the research assistant managing the Valproic Acid (VPA) clinical trials to get the most current information on known side effects. The stake holders of this trial have chosen not to maintain a web link to this information. Typically, they prefer to directly share documents with patients and their doctors. I will forward the most current documentation to you and your doctor by mail or email if your prefer."

q2 = Question.create(title: title2, content: question2)
a2 = Answer.create(content: answer2)

a2.coordinator_id = c1.id
a2.save
p3.questions << q2
p3.save
q2.answer = a2
q2.save
q2.answered = true
q2.save

title3 = "Insurance won't help with new glasses."

question3 = "The past couple weeks my sight has been bothering me. I don't see as well with the glasses that I have might be time for a new pair of course insurance isn't going to cover it right now. What are some options to help me get an updated prescription?"

answer3 = "I'm sorry to hear your eyesight has been bothering you. I understand how difficult it can be to pay for new glasses and optometrist visits. If you need a new presrcription made I can make you an apointment through the clinic and they have discounted eyewear available. If you still find the options they provide too expensive, there are charitiable organizations in your community that can help. Let me know if you would like an appointment at the clinic or if I can provide information on organizations that provide assistance with purchasing eyewear."

q3 = Question.create(title: title3, content: question3)
a3 = Answer.create(content: answer3)

a3.coordinator_id = c1.id
a3.save
p4.questions << q3
p4.save
q3.answer = a3
q3.save
q3.answered = true
q3.save

title4 = "Having trouble with transportation."

question4 = "Have I told you the many reasons I hate not driving one of them is that I have to depend on other people to take my precious cargo and tonight my father in law got into car accident driving with one of my neighbors. I hate not driving, but I can't see well enough to do it when it gets dark. I'm scared to ride the bus alone. Can someone from the trial pick me up tomorrow morning?"

answer4 = "I know how hard it is to depend on others especially when you are dealing with deteriorating eyesight. Our trial is aimed to help others in your position and we greatly appreciate your sacrifice to further research that aims to cure Retinitis Pigmentosa. Unfortunately, we don't have a rideshare service set up for clinical appointments, but I can help you find public transportation that accomodates people with handicaps."

q4 = Question.create(title: title4, content: question4)
a4 = Answer.create(content: answer4)

a4.coordinator_id = c1.id
a4.save
p3.questions << q4
p3.save
q4.answer = a4
q4.save
q4.answered = true
q4.save

title5 = "Genetic links to Retinitis Pigmentosa."

question5 = "My daughter was asking me questions about wether she will inherit the condition I have. It's been a rough couple of years and she has seen me struggle with losing my job and needing more care from friends and family. I think she is scared that she will lose her eyesight too. What are the chances of her getting my disease or does that depend on both parents genes?"

answer5 = "The genetic factors in contracting Retinitis Pigmentosa
 are not fully known. I believe that your family will benefit by being informed and asking questions. Traits of X-linked retinitis pigmentosa are passed on by carrier mothers or affected fathers, females are rarely affected by this form of the diease. Patients with this from of retinitis pigmentosa present with symptoms of night blindness from childhood; they have progressive constriction of visual fields and loss of vision in mid-life. Consider bringing your daughter along when you visit your physician and the research facilities. She will have the opportunity to ask her own questions and become more comfortable with the process of medical treatment."

q5 = Question.create(title: title5, content: question5)
a5 = Answer.create(content: answer5)

a5.coordinator_id = c1.id
a5.save
p2.questions << q5
q5.update_attribute(:private, false)
p2.save
q5.answer = a5
q5.save
q5.answered = true
q5.save

title6 = "They're not giving me direct answers."

question6 = "I joined this trial to play a more active role in my own health care, and gain access to new research treatments before they are widely available. The research staff tells me I am contributing to medical research, but I don't feel I am part of the process. I want more information on how the trial is going and what the results are but I'm not getting straight answers."

q6 = Question.create(title: title6, content: question6)

p2.questions << q6
p2.save


title7 = "Pending surgery"

question7 = "My doctor has suggested I have surgery on my cataracts. Will this cause me to have to leave the trial? If I have to leave control group can I continue taking the Valproic Acid? What about consoltation with my physician about other treatment options?"

q7 = Question.create(title: title7, content: question7)

p3.questions << q7
p3.save


title8 = "Feeling alone"

question8 = "I haven't written for a while I've been busy. My eyesight is getting a lot worse it's hard to get around it would be so easy to isolate, but I force myself to get outside. I'm scared of getting lost or not seeing obstacles when I go out alone. What do other patients do when they are at the final stage of being sightful?"

q8 = Question.create(title: title8, content: question8)

p2.questions << q8
p2.save

title9 = "Annoyed with loved ones."

question9 = "Do you ever get annoyed at your loved ones for trying to help and they over help! It's annoying-we will let you know if we need help thank you. I'm still capable of so much and learning how to do new things without good vision every day."

q9 = Question.create(title: title9, content: question9)

p4.questions << q9
p4.save

title10 = "Financial troubles!"

question10 = "Last December I maxed out my credit cards and my wife has been supporting me ever since. Lately she has to take an extra job and we are both really stressed. I will have to look for work soon. My old boss has generously offered to give me some work on the phone banks, but the hours will conflict with appointments at the research clinic. I am facing a situation where I will have to drop out of the trial unless I can get more compensation. Is there a process of financial aid I can apply for?"

q10 = Question.create(title: title10, content: question10)

p5.questions << q10
p5.save

title11 = "Medical Jargon"

question11 = "What does this mean? Defects in the peripherin protein can result in autosomal dominant retinitis pigmentosa. I get so many mailers with medical terminology should I ignore them or try to do researc."

q11 = Question.create(title: title11, content: question11)

p5.questions << q11
p5.save

title12 = "Internet research OK?"

question12 = "Can I do research on the internet to figure out why I am getting ulcers. Is wikipedia bad, but established medical sites good. What links do you recommend?"

q12 = Question.create(title: title12, content: question12)

p5.questions << q12
p5.save





