class RequestsController < ApplicationController
  before_action :set_request, only: [:show, :edit, :update, :destroy]

  # GET /requests
  # GET /requests.json

  def index
    #@requests = Request.where()
    @requests = Request.joins(:request_status).merge(RequestStatus.unsent).limit(20)
    @categories = Category.all
    GmailJob.perform_later
  end

  # GET /requests/1
  # GET /requests/1.json
  def show
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
    @category = @request.categories
  end

  # POST /requests
  # POST /requests.json
  def create
    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Request was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requests/1
  # PATCH/PUT /requests/1.json
  def update
    puts "WELCOME"
    if @request.update(request_params)
      respond_to do |format|
        format.js
        return true
      end
    else
      puts "DID NOT UPDATE"
    end
  end

  def reply_request
    @delivered = false
    @request = Request.find(params[:request_id])
    #Check if there is a category
    if @request.categories.blank?
      respond_to do |format|
        format.js
        return false
      end
    else
      if ReplyRequestMailer.reply_request(@request).deliver_later
        @delivered = true
        respond_to do |format|
          format.js
          return true
        end
      else
        puts "falhou"
      end
    end
  
  end

  # DELETE /requests/1
  # DELETE /requests/1.json
  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to requests_url, notice: 'Request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def authorize

  end
  

  def connect
    # Connecting to Gmail
    require "googleauth"
    require 'google/apis/gmail_v1'
    require "googleauth/stores/file_token_store"

    scope = Google::Apis::GmailV1::AUTH_GMAIL_READONLY
    service = Google::Apis::GmailV1::GmailService.new
    service.client_options.application_name = "rubyprayers"

    service.authorization = Google::Auth::ServiceAccountCredentials.make_creds(
                        json_key_io: File.open(Rails.root.join("public", "rubyprayers-2117861e1cc2.json")),
                        scope: scope)

    
    access_token = service.authorization.fetch_access_token!
    
    # Show the user's labels
    user_id = "me"
    result = service.list_user_labels user_id
    puts "Labels:"
    puts "No labels found" if result.labels.empty?
    result.labels.each { |label| puts "- #{label.name}" }
 
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_params
      params.require(:request).permit(:name, :email, :request, category_ids:[])
    end

end
