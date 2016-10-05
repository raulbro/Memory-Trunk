# config/initializers/paperclip.rb 
# We are actually setting this to 's3_domain_url', 
# so it's not a placeholder for something else. 


#Uncomment the following 2 lines to make the profile picture work
#Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
#Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'