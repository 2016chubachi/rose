class MembersController < ApplicationController

  def index
    @members = Member.order("number")
  end

  def show
    @member = Member.find(params[:id])
  end

  def new
    @member = Member.new(birthday: Date.new(1985,1,1))
  end

  def edit
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(params[:member])
    if @member.save
      redirect_to @member, notice: "Registered your information"
    else
       render "new"
    end
  end

  def update
    @member = Member.find(params[:id])
    @member.assign_attributes(params[:member])
     if @member.save
       redirect_to @member, notice: "Modified your information"
     else
       render "edit"
     end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to :member, notice: "Deleted your information"
  end

  def search
    @members = Member.search(params[:q])
     render "index"
  end

end
