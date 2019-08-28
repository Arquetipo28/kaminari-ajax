class VisitsController < ApplicationController
  # This method will be required later
  def show; end

  def visitors
    # This parameter will contain the searched page
    page = params[:page] || 1
    # With this we are able to retrieve current page founded records
    visitors = Visit.page(page)
    render status: 200, json: { records: visitors, total_pages: total_pages }
  end

  def total_pages
    # Remember to change records_per_page with an integer number
    @total_pages ||= (Visit.count / 10.to_f).ceil
  end
end