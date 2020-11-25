class ChoresController < ApplicationController
  def categories
    render({ :template => "chores/category.html.erb" })
  end 

  def index
    matching_chores = Chore.all

    @list_of_chores = matching_chores.order({ :created_at => :desc })

    matching_users = User.all

    @list_of_users = matching_users.order( :created_at => :desc )

    render({ :template => "chores/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_chores = Chore.where({ :id => the_id })

    @the_chore = matching_chores.at(0)

    render({ :template => "chores/show.html.erb" })
  end

  def complete
    the_id = params.fetch("path_id")
    matching_chore = Chore.where({ :id => the_id }).at(0)
    matching_chore.completed = true
    matching_chore.save
    redirect_to("/chores", :notice => "Successfully changed the completion status of the chore.")
  end

  def create
    the_chore = Chore.new
    # the_chore.family_id = params.fetch("query_family_id")
    the_chore.family_id = Family.where({ :family_name => @current_user.last_name }).at(0).id
    # the_chore.family_id = @current_user.member.family_id
    # the_chore.role_id = Role.where({ :role => params.fetch("query_role") }).at(0).id
    the_chore.role_id = params.fetch("query_role")
    the_chore.giver_id = @current_user.id
    the_chore.receiver_id = params.fetch("query_receiver_id")
    the_chore.chore_name = params.fetch("query_chore_name")
    the_chore.category = params.fetch("query_category")
    the_chore.chore_image = params.fetch("query_image")
    the_chore.due_date = params.fetch("query_due_date")
    the_chore.completed = params.fetch("query_completed", false)
    # the_chore.coupon_id = params.fetch("query_coupon_id")
    # the_chore.coupon_id = Coupon.where({ :receiver_id => @current_user.id }).at(0).id
    the_chore.coupon_id = the_chore.id

    if the_chore.valid?
      the_chore.save
      redirect_to("/chores", { :notice => "Chore created successfully." })
    else
      redirect_to("/chores", { :notice => "Chore failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_chore = Chore.where({ :id => the_id }).at(0)

    the_chore.family_id = params.fetch("query_family_id")
    the_chore.role_id = params.fetch("query_role_id")
    the_chore.chore_name = params.fetch("query_chore_name")
    the_chore.category = params.fetch("query_category")
    the_chore.due_date = params.fetch("query_due_date")
    the_chore.completed = params.fetch("query_completed", false)
    the_chore.coupon_id = params.fetch("query_coupon_id")

    if the_chore.valid?
      the_chore.save
      redirect_to("/chores/#{the_chore.id}", { :notice => "Chore updated successfully."} )
    else
      redirect_to("/chores/#{the_chore.id}", { :alert => "Chore failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_chore = Chore.where({ :id => the_id }).at(0)

    the_chore.destroy

    redirect_to("/chores", { :notice => "Chore deleted successfully."} )
  end
end
