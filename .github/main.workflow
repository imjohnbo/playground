workflow "Partner Engineering Weekly Radar" {
  resolves = ["weekly-radar"]
  on = "schedule(0 12 * * 1)"
}

action "weekly-radar" {
  uses = "imjohnbo/weekly-radar@master"
  secrets = ["GITHUB_TOKEN"]
  env = {
    ASSIGNEES = "imjohnbo imjohnbo1"
  }
}
