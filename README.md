# action-mastodon
GitHub Action that sends a Mastodon toot.


## How to use

```
workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Mastodon"]
}

action "GitHub Action for Mastodon" {
  uses = "mika-f/action-mastodon@master"
  secrets = [ "MASTODON_ACCESS_TOKEN" ]
  env = {
    MASTODON_INSTANCE = "https://mastodon.cloud"
  }
  args = [
    "status=\"Someone pushed a new commit!\"",
    "visibility=private"
  ]
}
```
