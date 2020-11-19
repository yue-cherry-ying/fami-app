class FamiliesController < ApplicationController
  def index
    matching_families = Family.all

    @list_of_families = matching_families.order({ :created_at => :desc })

    render({ :template => "families/index.html.erb" })
  end
  
  def show
    the_id = params.fetch("path_id")

    matching_families = Family.where({ :id => the_id })

    @the_family = matching_families.at(0)

    render({ :template => "families/show.html.erb" })
  end

  def create
    the_family = Family.new
    the_family.family_name = params.fetch("query_family_name")

    if the_family.valid?
      the_family.save
      redirect_to("/families", { :notice => "Family created successfully." })
    else
      redirect_to("/families", { :notice => "Family failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_family = Family.where({ :id => the_id }).at(0)

    the_family.family_name = params.fetch("query_family_name")

    if the_family.valid?
      the_family.save
      redirect_to("/families/#{the_family.id}", { :notice => "Family updated successfully."} )
    else
      redirect_to("/families/#{the_family.id}", { :alert => "Family failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_family = Family.where({ :id => the_id }).at(0)

    the_family.destroy

    redirect_to("/families", { :notice => "Family deleted successfully."} )
  end
end
