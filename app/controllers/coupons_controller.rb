class CouponsController < ApplicationController
  def index
    matching_coupons = Coupon.all

    @list_of_coupons = matching_coupons.order({ :created_at => :desc })

    render({ :template => "coupons/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_coupons = Coupon.where({ :id => the_id })

    @the_coupon = matching_coupons.at(0)

    render({ :template => "coupons/show.html.erb" })
  end

  def create
    the_coupon = Coupon.new
    the_coupon.giver_id = params.fetch("query_giver_id")
    the_coupon.receiver_id = params.fetch("query_receiver_id")

    if the_coupon.valid?
      the_coupon.save
      redirect_to("/coupons", { :notice => "Coupon created successfully." })
    else
      redirect_to("/coupons", { :notice => "Coupon failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_coupon = Coupon.where({ :id => the_id }).at(0)

    the_coupon.giver_id = params.fetch("query_giver_id")
    the_coupon.receiver_id = params.fetch("query_receiver_id")

    if the_coupon.valid?
      the_coupon.save
      redirect_to("/coupons/#{the_coupon.id}", { :notice => "Coupon updated successfully."} )
    else
      redirect_to("/coupons/#{the_coupon.id}", { :alert => "Coupon failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_coupon = Coupon.where({ :id => the_id }).at(0)

    the_coupon.destroy

    redirect_to("/coupons", { :notice => "Coupon deleted successfully."} )
  end
end
