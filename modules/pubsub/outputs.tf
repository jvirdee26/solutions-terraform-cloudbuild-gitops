output "topic_name" {
  value = module.pubsub-testing.topic 
}

output "subscription_name" {
  value = "${element(module.pubsub-testing, 0)}"
}