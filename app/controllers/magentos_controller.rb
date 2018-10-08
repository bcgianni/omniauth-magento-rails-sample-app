class MagentosController < ApplicationController

  # GET /magentos
  # GET /magentos.json
  def index
    @auth_hash = request.env['omniauth.auth']
  end
end
