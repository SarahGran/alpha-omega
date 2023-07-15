package openssf.omega.policy.autogenerated.cwe.cwe_511

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_511
# title: "CWE-511: Logic/Time Bomb"
# methodology: >
#   The product contains code that is designed to disrupt the legitimate operation of the product (or its environment) when a certain time passes, or when a certain logical condition is met.
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
        not "cwe-511" in assertion.predicate.content.tags
    }
}