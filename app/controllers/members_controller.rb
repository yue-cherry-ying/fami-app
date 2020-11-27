class MembersController < ApplicationController
  def index
    matching_family = Family.where({ :family_name => @current_user.last_name }).at(0)
    matching_members = Member.where({ :family_id => matching_family.id })

    @list_of_members = matching_members.order({ :created_at => :desc })

    render({ :template => "members/index.html.erb" })
  end

  def show
    matching_family = Family.where({ :family_name => @current_user.last_name }).at(0)
    matching_members = Member.where({ :family_id => matching_family.id })

    @list_of_members = matching_members.order({ :created_at => :desc })

    the_id = params.fetch("path_id")

    matching_members = Member.where({ :id => the_id })

    @the_member = matching_members.at(0)

    render({ :template => "members/show.html.erb" })
  end

  def create
    the_member = Member.new
    the_member.name = params.fetch("query_name")
    the_member.profile_image = params.fetch("query_profile_image")
    the_member.bio = params.fetch("query_bio")

    if the_member.valid?
      the_member.save
      redirect_to("/members", { :notice => "Member created successfully." })
    else
      redirect_to("/members", { :notice => "Member failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_member = Member.where({ :id => the_id }).at(0)

    the_member.name = params.fetch("query_name")
    the_member.profile_image = params.fetch("query_profile_image")
    the_member.bio = params.fetch("query_bio")

    if the_member.valid?
      the_member.save
      redirect_to("/members/#{the_member.id}", { :notice => "Member updated successfully."} )
    else
      redirect_to("/members/#{the_member.id}", { :alert => "Member failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_member = Member.where({ :id => the_id }).at(0)

    the_member.destroy

    redirect_to("/members", { :notice => "Member deleted successfully."} )
  end
end
