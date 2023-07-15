package openssf.omega.policy.autogenerated.cwe.cwe_444

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_444
# title: "CWE-444: Inconsistent Interpretation of HTTP Requests ('HTTP Request/Response Smuggling')"
# methodology: >
#   The product acts as an intermediary HTTP agent (such as a proxy or firewall) in the data flow between two entities such as a client and server, but it does not interpret malformed HTTP requests or responses in ways that are consistent with how the messages will be processed by those entities that are at the ultimate destination.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-444" in assertion.predicate.content.tags
    }
}