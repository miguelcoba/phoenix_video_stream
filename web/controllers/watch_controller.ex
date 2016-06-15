defmodule PhoenixVideoStream.WatchController do
  use PhoenixVideoStream.Web, :controller

  import PhoenixVideoStream.Util

  alias PhoenixVideoStream.Video

  def show(%{req_headers: headers} = conn, %{"id" => id}) do
    video = Repo.get!(Video, id)
    send_video(conn, headers, video)
  end
end
