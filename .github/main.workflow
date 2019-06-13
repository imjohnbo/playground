workflow "Partner Engineering Weekly Radar" {
  resolves = ["weekly-radar"]
  on = "repository_dispatch"
}

action "weekly-radar" {
  uses = "imjohnbo/weekly-radar@master"
  env = {
    ASSIGNEES = "imjohnbo imjohnbo1"
  }
  secrets = ["GITHUB_TOKEN"]
}
