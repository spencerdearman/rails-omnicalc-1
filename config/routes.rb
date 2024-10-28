Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "s_n"})
  get("/square/new", { :controller => "calc", :action => "s_n"})
  get("/square/results", { :controller => "calc", :action => "s_r"})
  get("/square_root/new", { :controller => "calc", :action => "sr_n"})
  get("/square_root/results", { :controller => "calc", :action => "sr_r"})
  get("/payment/new", { :controller => "calc", :action => "p_n"})
  get("/payment/results", { :controller => "calc", :action => "p_r"})
  get("/random/new", { :controller => "calc", :action => "r_n"})
  get("/random/results", { :controller => "calc", :action => "r_r"})
end
