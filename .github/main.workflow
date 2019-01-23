workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Mastodon"]
}

action "GitHub Action for Mastodon" {
  uses = "./"
  secrets = ["MASTODON_ACCESS_TOKEN"]
  env = {
    MASTODON_INSTANCE = "https://don.nako.ne.jp"
  }
  args = "\"Someone pushed a new commit!\""
}
