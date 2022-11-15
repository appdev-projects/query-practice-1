Rails.application.routes.draw do
  get("/", { :controller => "practice", :action => "one" })

  get("/two", { :controller => "practice", :action => "two" })

  get("/three", { :controller => "practice", :action => "three" })

  get("/four", { :controller => "practice", :action => "four" })
end
