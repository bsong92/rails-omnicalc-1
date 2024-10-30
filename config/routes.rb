Rails.application.routes.draw do

  get("/", { :controller => "zebra", :action => "rules" })

  get("/square/new", { :controller => "zebra", :action => "square_new" })

  get("/square/results", { :controller => "zebra", :action => "square_results" })
  
  get("/square_root/new", { :controller => "zebra", :action => "square_root" })

  get("/square_root/results", { :controller => "zebra", :action => "square_root_results" })

  get("/payment/new", { :controller => "zebra", :action => "payment" })

  get("/random/new", { :controller => "zebra", :action => "random_new" })

end
