defmodule Excalibur.Mixfile do
  use Mix.Project

  def project do
    [app: :excalibur,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, "~> 0.11", only: :dev}]
  end

  defp description do
    """
    A modern Elixir utility library delivering modularity, performance & extras.
    """
  end

  defp package do
    [name: :excalibur,
     files: ["lib", "mix.exs", "README*", "LICENSE*"],
     maintainers: ["Jason C. Huang"],
     licenses: ["MIT License"],
     links: %{"GitHub" => "https://github.com/kaddopur/excalibur",
              "Docs" => ""}]
  end
end
