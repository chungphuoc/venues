class ContactsController < ApplicationController
  # GET /contacts
  # GET /contacts.xml
  def index
    @venue = Venue.find(params[:venue_id])
    @contacts = @venue.contact
    
    respond_to do |format|
      format.html #index.html.erb
      format.xml { render :xml => @contacts }
    end
  end
  
  # GET /contacts/1
  # GET /contacts/1.xml
  def show
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contact }
    end
  end

  # GET /contacts/new
  # GET /contacts/new.xml
  def new
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.new

    respond_to do |format|
      format.html #new.html.erb
    end
  end
  
   # GET /contacts/1/edit
  def edit
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.find(params[:id])
  end
  
  # POST /contacts
  # POST /contacts.xml
  def create
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.new(params[:contact])
    
    respond_to do |format|
      if @contact.save
        format.html { redirect_to(venue_contacts_path, :notice => 'Contact was successfully created.') }
      else
        format.html {render :action => "new" }
      end 
    end
  end
  
  # POST /contacts
  # POST /contacts.xml
  def update
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.find(params[:id])
        
    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        #format.html { redirect_to(venue_contacts_path, :notice => "Contact was successfully updated.")}
        format.html { redirect_to(venue_contacts_path, :notice => "Contact was successfully updated.")}
        format.xml { head :ok }
       else
         format.html { render :action => "edit"}
         format.xml { render :xml => @contact.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  #DELETE /contacts/1
  #DELETE /contacts/1.xml
  def destroy
    @venue = Venue.find(params[:venue_id])
    @contact = @venue.contact.find(params[:id])
    @contact.destroy
    
    respond_to do |format|
      format.html { redirect_to(venue_contacts_url)}
      format.xml { head :ok } 
    end
  end
end
