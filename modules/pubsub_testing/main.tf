module "pubsub_testing" {
    source = "terraform-google-modules/pubsub/google"
    project_id = var.project 
    topic = var.topic_name 
    pull_subscriptions = [
        {
            name    = var.subscription_name
            ack_deadline_seconds = 20 
            maximum_delivery_attempts = 5
            maxium_backoff       = "600s"
            minimum_backoff      = "300s"
            enabling_message_ordering = true

        }
    ]
}