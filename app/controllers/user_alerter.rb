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

            @user=User.find(10)
            SendEmailJob.set(wait: 2.seconds).perform_later(newsletter,@user)
            # if @users_of_topic
            #     puts "This user will be notified"

            #     for user in @users_of_topic
            #         @user = user
            #         if !notified_user.include?(@user.name)
            #             notified_user.push(@user.name)
            #             puts @user.inspect
            #             SendEmailJob.set(wait: 2.seconds).perform_later(newsletter,@user)
            #         end
            #     end
            # end
        end
        
    end
end