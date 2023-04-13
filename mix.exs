defmodule BcryptExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :bcrypt_example,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bcrypt_rust, git: "https://github.com/thomas9911/bcrypt-rust.git"}
    ]
  end
end
