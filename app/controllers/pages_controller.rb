class PagesController < ApplicationController
  def about
  end

  # TO DO: Make a search bar for the contact page
  def contact
    # 1. when they haven't typed anything, don't do any filtering and show the whole array
    @members = ['Patrick', 'Lou', 'Mary', 'John', 'Becca', 'Dimitri', 'May']

    # 2. when they've typed something, i filter the array
    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member])}
    end
    # # To break your code and inspect everything available to you use:
    # raise

  end

  def home
  end
end

# A LITTLE SIDENOTE:
# Inside your controllers you can put whatever logic you wish to,
# of course depending on the feature tht you are asked to build.
# NOW we are starting to apply all the skills we learned in the first Ruby weeks
# in order to build real-life features :)
