class GraphqlController < ApplicationController
  def execute
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    ###################### CONTEXT #############################
    ## First: <User id: 1, name: "user0", role: "banned", created_at: "2019-10-15 23:33:17", updated_at: "2019-10-15 23:33:17">
    ## Second: <User id: 2, name: "user1", role: "reader", created_at: "2019-10-15 23:33:17", updated_at: "2019-10-15 23:33:17">
    ## Third: <User id: 3, name: "user2", role: "sub_admin", created_at: "2019-10-15 23:33:17", updated_at: "2019-10-15 23:33:17">
    ## Fourth: <User id: 4, name: "user3", role: "admin", created_at: "2019-10-15 23:33:17", updated_at: "2019-10-15 23:33:17">
    context = { current_user: @current_user }
    ###########################################################
    result = GraphqlApiSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  rescue => e
    raise e unless Rails.env.development?
    handle_error_in_development e
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end

  def handle_error_in_development(e)
    logger.error e.message
    logger.error e.backtrace.join("\n")

    render json: { error: { message: e.message, backtrace: e.backtrace }, data: {} }, status: 500
  end
end
