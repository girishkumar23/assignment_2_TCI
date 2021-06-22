# install aws cli first and configure it with credentials and default region
# the script will iterate over all regions of AWS

aws ec2 describe-instances \ 
aws ec2 describe-images \
    --filters Name=instance-type,Values=Name \ Name=image-type,Values=Name \
    --query 'Reservations[*].Instances[*].Images[*].{OS:image-type,Machine Type:instance-type, Count: count(image-type)}'\
    --output table