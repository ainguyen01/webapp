class CopaysController < ApplicationController


  def index
    @copays = Copay.all

      if params[:search]
        @copays = Copay.search(params[:search]).order("created_at DESC")
      else
        @copays = Copay.all.order("created_at DESC")
      end

      render("copays/index.html.erb")
  end

  def show
    @copay = Copay.find(params[:id])

    render("copays/show.html.erb")
  end

  def new
    @copay = Copay.new

    render("copays/new.html.erb")
  end

  def create
    @copay = Copay.new

    @copay.name = params[:name]
    @copay.pay_as_little_as = params[:pay_as_little_as]
    @copay.max_saving = params[:max_saving]
    @copay.cap = params[:cap]
    @copay.url = params[:url]
    @copay.user_id = params[:user_id]

    save_status = @copay.save

    if save_status == true
      redirect_to("/copays/#{@copay.id}", :notice => "Copay created successfully.")
    else
      render("copays/new.html.erb")
    end
  end

  def edit
    @copay = Copay.find(params[:id])

    render("copays/edit.html.erb")
  end

  def update
    @copay = Copay.find(params[:id])

    @copay.name = params[:name]
    @copay.pay_as_little_as = params[:pay_as_little_as]
    @copay.max_saving = params[:max_saving]
    @copay.cap = params[:cap]
    @copay.url = params[:url]
    @copay.user_id = params[:user_id]

    save_status = @copay.save

    if save_status == true
      redirect_to("/copays/#{@copay.id}", :notice => "Copay updated successfully.")
    else
      render("copays/edit.html.erb")
    end
  end

  def destroy
    @copay = Copay.find(params[:id])

    @copay.destroy

    if URI(request.referer).path == "/copays/#{@copay.id}"
      redirect_to("/", :notice => "Copay deleted.")
    else
      redirect_to(:back, :notice => "Copay deleted.")
    end
  end
end
