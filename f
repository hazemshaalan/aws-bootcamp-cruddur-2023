aws sns subscribe \
    --topic-arn="arn:aws:sns:us-east-1:850249732638:billing-alarm1" \
    --protocol email \
    --notification-endpoint hazem01234@gmail.com




    aws budgets create-budget \
    --account-id 850249732638 \
    --budget file://aws/json/budget.json \
    --notifications-with-subscribers file://aws/json/budget-notifications-with-subscribers.json


    aws cloudwatch put-metric-alarm --cli-input-json file://aws/json/alarm_config.json