defmodule DevblogWeb.Router do
  use DevblogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DevblogWeb do
    pipe_through :api
  end
end
