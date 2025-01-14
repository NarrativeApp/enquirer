defmodule Enquirer.Mixfile do
  use Mix.Project

  @version "0.1.1"
  def project do
    [
      app: :enquirer,
      version: @version,
      elixir: "~> 1.14",
      description:
        "Enquirer is a simple module to make is easy to get user input in terminal applications.",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp package do
    [
      maintainers: ["Martin Pretorius"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/glasnoster/enquirer"}
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.12", only: [:dev, :test]},
      {:git_ops, "~> 2.2", only: [:dev, :test]},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
