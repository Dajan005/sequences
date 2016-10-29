Rails.application.routes.draw do
  get("/all_guesses", { :controller => "guesses", :action => "index"})
  get("/show_answer", { :controller => "guesses", :action => "answer"})
  get("/", { :controller => "guesses", :action => "index"})
end
