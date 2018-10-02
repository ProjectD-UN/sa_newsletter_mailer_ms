class CreateNewsletter
    include Wisper::Publisher

    def call(newsletter_id,topics)
        newsletter = Newsletter.find(newsletter_id)
  
        # Some logic here to make sure that 
        # the newsletter we just found is live and 
        # visible to the public, based on its state
  
        if newsletter
            broadcast(:alert_user, newsletter,topics)
        else
            broadcast(:newsletter_created_failed, newsletter)
        end
    end
end