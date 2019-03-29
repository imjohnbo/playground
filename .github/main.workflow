workflow "New workflow" {
  resolves = ["WIP"]
  on = "push"
}

action "WIP" {
  uses = "wip/action@v1.0.0"
}
