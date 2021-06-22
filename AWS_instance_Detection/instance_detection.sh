# install aws cli first and configure it with credentials and default region
# the script will iterate over all regions of AWS

aws ec2 describe-instances \ describe-images 
    --filters Name=instance-type,Values=Name \ Name=image-type,Values=Name \
    --query 'Reservations[*].Instances[*].{OS:image-type,Machine Type:instance-type, Count: count(image-type)}\
    --output table