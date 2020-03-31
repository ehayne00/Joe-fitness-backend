user1 = User.create(email: "ehayne02@hotmail.com", password_digest: "Lemony", dob: "17/01/1989", condition: "none", medication: "none", disability: "none", goals: "postural correction")

booking1 = Booking.create(time: "12:30", date: "12/12/2020", user_id: user1.id, first_session: "yes")

