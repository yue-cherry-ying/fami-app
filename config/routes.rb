Rails.application.routes.draw do



  # Routes for the Message resource:

  # CREATE
  post("/insert_message", { :controller => "messages", :action => "create" })
          
  # READ
  get("/messages", { :controller => "messages", :action => "index" })
  
  get("/messages/:path_id", { :controller => "messages", :action => "show" })
  
  # UPDATE
  
  post("/modify_message/:path_id", { :controller => "messages", :action => "update" })
  
  # DELETE
  get("/delete_message/:path_id", { :controller => "messages", :action => "destroy" })

  #------------------------------

  # Routes for the Coupon resource:

  # CREATE
  post("/insert_coupon", { :controller => "coupons", :action => "create" })
          
  # READ
  get("/coupons", { :controller => "coupons", :action => "index" })
  
  get("/coupons/:path_id", { :controller => "coupons", :action => "show" })
  
  # UPDATE
  
  post("/modify_coupon/:path_id", { :controller => "coupons", :action => "update" })
  
  # DELETE
  get("/delete_coupon/:path_id", { :controller => "coupons", :action => "destroy" })

  #------------------------------

  # Routes for the Member resource:

  # CREATE
  post("/insert_member", { :controller => "members", :action => "create" })
          
  # READ
  get("/members", { :controller => "members", :action => "index" })
  
  get("/members/:path_id", { :controller => "members", :action => "show" })
  
  # UPDATE
  
  post("/modify_member/:path_id", { :controller => "members", :action => "update" })
  
  # DELETE
  get("/delete_member/:path_id", { :controller => "members", :action => "destroy" })

  #------------------------------

  # Routes for the Service resource:

  # CREATE
  post("/insert_service", { :controller => "services", :action => "create" })
          
  # READ
  get("/services", { :controller => "services", :action => "index" })
  
  get("/services/:path_id", { :controller => "services", :action => "show" })
  
  # UPDATE
  
  post("/modify_service/:path_id", { :controller => "services", :action => "update" })
  
  # DELETE
  get("/delete_service/:path_id", { :controller => "services", :action => "destroy" })

  #------------------------------

end
