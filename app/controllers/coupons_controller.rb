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
    the_coupon.chore_id = params.fetch("query_chore_id")
    the_coupon.redeemed = params.fetch("query_redeemed", false)
    the_coupon.receiver_id = params.fetch("query_receiver_id")
    the_coupon.giver_id = params.fetch("query_giver_id")
    the_coupon.coupon_content = params.fetch("query_coupon_content")
    the_coupon.expiration_date = params.fetch("query_expiration_date")

    if the_coupon.valid?
      the_coupon.save
      redirect_to("/coupons", { :notice => "Coupon created successfully." })
    else
      redirect_to("/coupons", { :notice => "Coupon failed to create successfully." })
    end
  end

  def redeem
    the_id = params.fetch("path_id")
    matching_coupon = Coupon.where({ :id => the_id }).at(0)
    matching_coupon.redeemed = true
    matching_coupon.save

    redirect_to("/coupons", :notice => "You have successfully redeemed a coupon! Enjoy your reward.")
  end

  def update
    the_id = params.fetch("path_id")
    the_coupon = Coupon.where({ :id => the_id }).at(0)

    # the_coupon.chore_id = params.fetch("query_chore_id")
    the_coupon.chore_id = @the_coupon.chore_id
    # the_coupon.redeemed = params.fetch("query_redeemed", false)
    the_coupon.redeemed = @the_coupon.redeemed
    # the_coupon.receiver_id = params.fetch("query_receiver_id")
    the_coupon.receiver_id = @the_coupon.receiver_id
    # the_coupon.giver_id = params.fetch("query_giver_id")
    the_coupon.giver_id = @the_coupon.giver_id
    the_coupon.coupon_content = params.fetch("query_coupon_content")
    the_coupon.expiration_date = params.fetch("query_expiration_date")

    if the_coupon.valid?
      the_coupon.save
      redirect_to("/coupons/#{the_coupon.id}", { :notice => "Successfully granted a coupon to your kid."} )
    else
      redirect_to("/coupons/#{the_coupon.id}", { :alert => "There's an issue granting the coupon, please try again." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_coupon = Coupon.where({ :id => the_id }).at(0)

    the_coupon.destroy

    redirect_to("/coupons", { :notice => "Coupon deleted successfully."} )
  end
end
