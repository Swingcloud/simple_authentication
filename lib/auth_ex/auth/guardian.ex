defmodule AuthEx.Auth.Guardian do
  use Guardian, otp_app: :auth_ex

  alias AuthEx.Auth

  def subject_for_token(user, _claims) do
    {:ok, to_string(user.id)}
  end

  def resource_from_claims(claims) do
    user = claims["sub"]
    |> Auth.get_user!
    {:ok, user}
  end
end
