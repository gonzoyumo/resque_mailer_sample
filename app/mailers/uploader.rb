# Copyright © 2010-2011 Tech-Angels. All Rights Reserved.

class Uploader < ActionMailer::Base
  include Resque::Mailer

  default :from =>  "do_not_reply@example.com"

  def document_upload
    Rails.logger.warn "document_upload started at #{Time.zone.now}"
    # attachments["rails.png"] = {
    #   :content_type => "image/png",
    #   :content => File.read("#{Rails.root}/public/images/rails.png") }

    mail(:to => MAIL_DEST, :subject => "email test") do |format|
      format.text { render :text => "toto"}
    end
    Rails.logger.warn "document_upload ended at #{Time.zone.now}"
  end
end