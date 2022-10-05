defmodule BluetoothAmpWeb.B3 do

  def upload(name, file_path) do
    HTTPoison.post!(
      "#{Application.get_env(:bluetooth_amp_web, :file_server)}/upload", 
      {:multipart, [
        {"name", name},
        {:file, file_path}
      ]}
    )
  end

  def get_url(name) do
    "http://#{Application.get_env(:bluetooth_amp_web, :file_server)}/files/#{name}"
  end

  
end
