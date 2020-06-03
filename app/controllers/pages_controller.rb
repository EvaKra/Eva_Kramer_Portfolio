class PagesController < ApplicationController
  def home
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/documents/CV_Eva_Kramer.pdf", type: "application/pdf", x_sendfile: true
  end

  def about
  end
end
