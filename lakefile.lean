import Lake

open Lake DSL

require auto from git "https://github.com/leanprover-community/lean-auto.git"@"b9a5fa7a88410474c13905bd23d331ea079923b3"

package Duper {
  precompileModules := true
  preferReleaseBuild := false
}

lean_lib Duper

@[default_target]
lean_exe duper {
  root := `Main
}
