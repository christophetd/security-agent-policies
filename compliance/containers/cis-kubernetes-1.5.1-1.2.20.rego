package datadog
import data.helpers as h

valid_process(process) {
  not h.has_key(process.flags, "--secure-port")
} {
  process.flags["--secure-port"] != "0"
}
