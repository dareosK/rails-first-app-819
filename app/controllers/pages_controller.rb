class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ['Patrick', 'Lou', 'Mary', 'John', 'Becca', 'Dimitri', 'May']
    # TO DO: Make a search bar
    # retrieve the search query that my user made
    if params[:member]
    # Filter the members array based on the user's query
      @members = @members.select { |member| member.start_with?(params[:member])}
    end
    # # To break your code and inspect everything available to you use:
    # raise
  end

  def home
  end
end
