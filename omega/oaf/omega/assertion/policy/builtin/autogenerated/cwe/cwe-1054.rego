package openssf.omega.policy.autogenerated.cwe.cwe_1054

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_1054
# title: "CWE-1054: Invocation of a Control Element at an Unnecessarily Deep Horizontal Layer"
# methodology: >
#   The code at one architectural layer invokes code that resides at a deeper layer than the adjacent layer, i.e., the invocation skips at least one layer, and the invoked code is not part of a vertical utility layer that can be referenced from any horizontal layer.
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
        not "cwe-1054" in assertion.predicate.content.tags
    }
}