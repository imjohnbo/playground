workflow "Partner Engineering Weekly Radar" {
  resolves = ["weekly-radar"]
  on = "repository_dispatch"
}

action "weekly-radar" {
  uses = "imjohnbo/weekly-radar@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    ASSIGNEES = "imjohnbo imjohnbo1"
  }
}
