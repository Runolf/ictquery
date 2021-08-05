class Cvupload < ActiveRecord::Base
    mount_uploader :text, AvatarUploader
end
