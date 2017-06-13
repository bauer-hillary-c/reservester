class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def new_reservation_email(reservation)
    @reservation = reservation
    @restaurant = reservation.restaurant
    @owner = @restaurant.owner

    @url = 'http://localhost:3000/restaurants/<%= @restaurant.id %>/reservations/<%= @reservation.id %>'

    mail(
      to: "hbauer@localhost" # would be in prod @owner.email,
      subject: 'New Reservation!'
      )
  end
end
