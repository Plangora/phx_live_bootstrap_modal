defmodule LiveSiteWeb.ModalComponent do
  use LiveSiteWeb, :live_component

  @impl true
  def render(assigns) do
    ~L"""
    <div id="<%= @id %>" class="modal fade show"
      phx-capture-click="close"
      phx-window-keydown="close"
      phx-key="escape"
      phx-target="#<%= @id %>"
      phx-page-loading style="display: block;">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
            <%= live_patch raw("&times;"), to: @return_to, class: "phx-modal-close" %>
            <%= live_component @socket, @component, @opts %>
          </div>
        </div>
      </div>
    </div>
    """
  end

  @impl true
  def handle_event("close", _, socket) do
    {:noreply, push_patch(socket, to: socket.assigns.return_to)}
  end
end
