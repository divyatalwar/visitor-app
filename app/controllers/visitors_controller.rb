class VisitorsController < ApplicationController

  before_action :validate_params, only: :search

  def search
    entry_ticket_ids = Visitor.where("event_type = 0 and timestamp <= (?)", @time).pluck(:ticket_id)
    @visitor_count = Visitor.where("timestamp >= (?) and event_type = 1 and ticket_id in (?)" , @time, entry_ticket_ids).count
  end

  private

  def validate_params
    @time = DateTime.parse(params[:search]) rescue nil
    redirect_to visitors_search_path, notice: 'Invalid Datetime' unless @time.present?
  end

end
