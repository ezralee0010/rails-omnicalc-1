Rails.application.routes.draw do
  get("/", { :controller => "zebra", :action => "index"})

  get("/square/new", { :controller => "zebra", :action => "fall"})

  get("/square/results", { :controller => "zebra", :action => "winter"})

  get("/square_root/new", { :controller => "zebra", :action => "spring"})

  get("/square_root/results", { :controller => "zebra", :action => "summer"})

  get("/payment/new", { :controller => "zebra", :action => "milk"})

  get("/payment/results", { :controller => "zebra", :action => "cookie"})

  get("/random/new", { :controller => "zebra", :action => "tennis"})

  get("/random/results", { :controller => "zebra", :action => "shoe"})

end
