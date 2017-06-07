class DislikesController < ApplicationController
  def index
    @dislikes = Dislike.all

    render("dislikes/index.html.erb")
  end

  def show
    @dislike = Dislike.find(params[:id])

    render("dislikes/show.html.erb")
  end

  def new
    @dislike = Dislike.new

    render("dislikes/new.html.erb")
  end

  def create
    @dislike = Dislike.new

    @dislike.user_id = params[:user_id]
    @dislike.copay_id = params[:copay_id]

    save_status = @dislike.save

    if save_status == true
      redirect_to("/dislikes/#{@dislike.id}", :notice => "Dislike created successfully.")
    else
      render("dislikes/new.html.erb")
    end
  end

  def edit
    @dislike = Dislike.find(params[:id])

    render("dislikes/edit.html.erb")
  end

  def update
    @dislike = Dislike.find(params[:id])

    @dislike.user_id = params[:user_id]
    @dislike.copay_id = params[:copay_id]

    save_status = @dislike.save

    if save_status == true
      redirect_to("/dislikes/#{@dislike.id}", :notice => "Dislike updated successfully.")
    else
      render("dislikes/edit.html.erb")
    end
  end

  def destroy
    @dislike = Dislike.find(params[:id])

    @dislike.destroy

    if URI(request.referer).path == "/dislikes/#{@dislike.id}"
      redirect_to("/", :notice => "Dislike deleted.")
    else
      redirect_to(:back, :notice => "Dislike deleted.")
    end
  end
end
