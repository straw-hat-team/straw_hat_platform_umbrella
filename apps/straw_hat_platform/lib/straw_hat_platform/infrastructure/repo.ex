defmodule StrawHatPlatform.Infrastructure.Repo do
  use Ecto.Repo,
    otp_app: :straw_hat_platform,
    adapter: Ecto.Adapters.Postgres
end
