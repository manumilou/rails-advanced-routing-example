class ApiConstraint
  attr_reader :version

  def initialize(options)
    @version = options.fetch(:version)
  end

  def matches?(request)
     request
      .headers
      .fetch(:accept)
      .include?("version=#{version}")
  end
end

Rails.application.routes.draw do

  def api_version(version, &routes)
    api_constraint = ApiConstraint.new(version: version)
    scope(module: "v#{version}", constraints: api_constraint, &routes)
  end

  api_version(1) do
    resources :checkout
  end

  resources :checkout

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
