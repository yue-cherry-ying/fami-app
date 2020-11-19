Rails.application.routes.draw do

  # Routes for the Family resource:

  # CREATE
  # post("/insert_family", { :controller => "families", :action => "create" })
          
  # READ
  get("/families", { :controller => "families", :action => "index" })
  
  get("/families/:path_id", { :controller => "families", :action => "show" })
  
  # UPDATE
  
  # post("/modify_family/:path_id", { :controller => "families", :action => "update" })
  
  # DELETE
  # get("/delete_family/:path_id", { :controller => "families", :action => "destroy" })

  #------------------------------

  get("/", { :controller => "members", :action => "index" })

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

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
