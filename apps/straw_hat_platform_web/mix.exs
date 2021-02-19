defmodule StrawHatPlatform.Web.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :straw_hat_platform_web,
      version: @version,
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:phoenix, :gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {StrawHatPlatform.Web.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:phoenix, "~> 1.5.7"},
      {:phoenix_ecto, "~> 4.0"},
      {:phoenix_live_view, "~> 0.15.0"},
      {:phoenix_html, "~> 2.11"},
      {:phoenix_live_dashboard, "~> 0.4"},
      {:telemetry_metrics, "~> 0.4"},
      {:telemetry_poller, "~> 0.4"},
      {:gettext, "~> 0.11"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},

      # Umbrella
      {:straw_hat_platform, in_umbrella: true},

      # Development
      {:phoenix_live_reload, "~> 1.2", only: :dev},

      # Testing
      {:floki, ">= 0.27.0", only: :test}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "cmd yarn install --cwd assets"],
      test: ["ecto.create --quiet", "ecto.migrate --quiet", "test --trace"]
    ]
  end
end
