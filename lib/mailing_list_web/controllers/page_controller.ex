defmodule MailingListWeb.PageController do
  use MailingListWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
