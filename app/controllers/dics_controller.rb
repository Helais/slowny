class DicsController < ApplicationController
  # GET /dics
  # GET /dics.xml
  def index
    
    #@dics = Dic.all
    #@dics_all = Dic.all if params[:search]
    #@dics = Dic.find :all, :conditions => {:count_letters => params[:size].to_i}
    
    cond = {}
    cond[:count_letters] = [params[:size].to_i] if params[:size].to_i > 0
    #@dics = Dic.find(:all, :conditions => cond)
    #cond[:condition] = [" word '?' " , /^.params[:starts_with]/] if !params[:starts_with].blank?
    
    @dics = Dic.search params[:search], 
    :conditions => cond,
    :page => params[:page], :per_page => 20 if params[:search]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dics.to_xml(:only => :word) }
    end
  end

  # GET /dics/1
  # GET /dics/1.xml
  def show
    @dic = Dic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dic }
    end
  end

  # GET /dics/new
  # GET /dics/new.xml
  def new
    @dic = Dic.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dic }
    end
  end

  # GET /dics/1/edit
  def edit
    @dic = Dic.find(params[:id])
  end

  # POST /dics
  # POST /dics.xml
  def create
    @dic = Dic.new(params[:dic])

    respond_to do |format|
      if @dic.save
        flash[:notice] = 'Dic was successfully created.'
        format.html { redirect_to(@dic) }
        format.xml  { render :xml => @dic, :status => :created, :location => @dic }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dics/1
  # PUT /dics/1.xml
  def update
    @dic = Dic.find(params[:id])

    respond_to do |format|
      if @dic.update_attributes(params[:dic])
        flash[:notice] = 'Dic was successfully updated.'
        format.html { redirect_to(@dic) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dics/1
  # DELETE /dics/1.xml
  def destroy
    @dic = Dic.find(params[:id])
    @dic.destroy

    respond_to do |format|
      format.html { redirect_to(dics_url) }
      format.xml  { head :ok }
    end
  end
end
