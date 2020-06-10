module UsersHelper

    def check_image(user)
        image_tag (user.image), size: "100x80" unless user.image.attachment == nil 
    end

    
end
