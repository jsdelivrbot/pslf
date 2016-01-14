class CertsController < ApplicationController
  before_action :set_cert, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @certs = Cert.all
  end

  def show
  end

  def new
    @cert = current_user.certs.build
  end

  def edit
  end

  def create
    @cert = current_user.certs.build(cert_params)

    respond_to do |format|
      if @cert.save
        format.html { redirect_to profiles_path, notice: 'Employment verification form was successfully uploaded.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @cert.update(cert_params)
        format.html { redirect_to profiles_path, notice: 'Employment verification form was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @cert.destroy
    respond_to do |format|
      format.html { redirect_to certs_url, notice: 'Employment verification form was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert
      @cert = Cert.find(params[:id])
    end

    def correct_user
      @cert = current_user.certs.find_by(id: params[:id])
      redirect_to certs_path, notice: "Not authorized to edit this cert" if @cert.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_params
      params.require(:cert).permit(:description, :document)
    end
end
