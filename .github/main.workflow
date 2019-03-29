workflow "New workflow" {
  resolves = ["HTTP client"]
  on = "push"
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
  args = ["GET","https://jsonip.com/"]
}
