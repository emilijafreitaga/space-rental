class UsersController < ApplicationController
  def dashboard
    @user = current_user
    @spaces = @user.spaces
    @bookings = @user.bookings
  end
end

#display all bookings of a current user
#display all spaces
#add a new space button
#see each booking
#see each space
#back to index page
