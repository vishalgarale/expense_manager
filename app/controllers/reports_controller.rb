class ReportsController < ApplicationController
  before_filter :authenticate_user!
  include Dateable

  def new
    @categories = current_user.categories
    @start_date = 1.month.ago.to_date
    @end_date = Time.now.to_date
    @transactions = get_transaction
    @transactions.compact!
  end

  def create
    if params[:start_date].present? and params[:end_date].present? and  (@start_date = Dateable.parse_date(params[:start_date]) ) and
       (@end_date = Dateable.parse_date(params[:end_date]) ) and @start_date <= @end_date
        # @transcations = Transaction.where(created_at: start_date..end_date
        @transactions = get_transaction
        @transactions.compact!
        @success = true
    else
        @error = false
    end
  end

  def download
    @transactions = Transaction.where(id: params[:transactions])
    @end_date = params[:end_date]
    @start_date = params[:start_date]
    file_name = "#{@start_date}-#{@end_date}_report"
    respond_to do |format|
      format.pdf do
        @pdf = render_to_string :pdf => file_name, :template => 'reports/download.pdf.erb'
        send_data @pdf
      end
    end
  end

  private
  def get_transaction
    transcations = current_user.transactions.map { |e| e if e.created_at.to_date.between?(@start_date, @end_date) and ( params[:category].present? ? (e.category_name == params[:category])  : true )}
  end
end
