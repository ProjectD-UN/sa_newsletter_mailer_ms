class UserAlerter< ApplicationController
    def alert_user(newsletter,topics)
        newsletter = Newsletter.find(newsletter.id)
        
        #topics = newsletter.topics
        puts "\n Comenzando..."
        notified_user = Array.new 
        for i in topics 
            @topic = Topic.find(i)
            puts @topic.inspect
            @users_of_topic = @topic.users
            if @users_of_topic
                puts "This user will be notified"

                for user in @users_of_topic
                    if !notified_user.include?(user.name)
                        notified_user.push(user.name)
                        puts user.inspect
                        #UserMailer.send_alert_email(newsletter).deliver_later
                    end
                end
            end
        end
        
    end
end