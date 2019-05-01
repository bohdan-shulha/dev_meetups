defmodule MeetupsWeb.RegisterFormLive do
  use Phoenix.LiveView

  def render(assigns) do
    MeetupsWeb.PageView.render("register_form_live.html", assigns)
  end

  def mount(_session, socket) do
    # Repo.all(from e in Event, where: e.inserted_at > ^date, order_by: [asc: e.inserted_at])
    # Meetups.Repo.all(Meetups.Schema.Event)

    {:ok, assign(socket, step: "enter-email", email: "")}
  end

  def handle_event("change", %{"email" => email}, socket) do
    {:noreply, assign(socket, email: email)}
  end

  def handle_event("prev", _assigns, socket) do
    {:noreply, assign(socket, step: "enter-email")}
  end

  def handle_event("next", _assigns, socket) do
    # If valid email try to load data entered previously
    {:noreply, assign(socket, step: "enter-details")}
  end
end
