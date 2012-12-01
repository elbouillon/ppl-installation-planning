class HomeController < ApplicationController
  def index
    @users = User.all
    @installations = [ 
      {
        start_on: Date.today.beginning_of_week,
        end_on: 3.days.from_now.to_date,
        description: "Barroso",
        project_id: 1,
        team_id: 1
      }
    ]

    @projects = [
      {
        name: "Villa Barroso, Denges",
        planned: "5",
        status: "open",
        delivery_on: 3.days.from_now.to_date
      },
      {
        name: "Villa Petter, Villarepos",
        planned: "3",
        status: "open",
        delivery_on: 2.weeks.from_now.to_date
      },
      {
        name: "Villa Ding, Romain-Motier",
        planned: "1",
        status: "closed",
        delivery_on: 4.weeks.ago.to_date
      },
    ]

    @teams = [
      {
        name: "Agran 1",
        id: 1
      }
    ]
  end
end
