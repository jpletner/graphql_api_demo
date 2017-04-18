class GraphqlController < ApplicationController
  SCHEMA = GraphQL::Api::Schema.new.schema
  def create
    render json: SCHEMA.execute(
      params[:query],
      variables: params[:variables] || {},
    )
  end

end
