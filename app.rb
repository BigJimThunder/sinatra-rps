require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock") do
  @outcome = "We Won!"
  rps = ["rock", "paper", "scissors"]
  @choice = "rock"
  @cpu_choice = rps.sample

  if @choice == @cpu_choice
    @outcome = "We tied!"
  elsif @cpu_choice == "paper"
    @outcome = "We lost!"
  end

  erb(:game)
end

get("/paper") do
  @outcome = "We Won!"
  rps = ["rock", "paper", "scissors"]
  @choice = "paper"
  @cpu_choice = rps.sample

  if @choice == @cpu_choice
    @outcome = "We tied!"
  elsif @cpu_choice == "scissors"
    @outcome = "We lost!"
  end

  erb(:game)
end

get("/scissors") do
  @outcome = "We Won!"
  rps = ["rock", "paper", "scissors"]
  @choice = "scissors"
  @cpu_choice = rps.sample

  if @choice == @cpu_choice
    @outcome = "We tied!"
  elsif @cpu_choice == "rock"
    @outcome = "We lost!"
  end

  erb(:game)
end
