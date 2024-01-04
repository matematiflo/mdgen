import Lake
open Lake DSL

package «mdgen» where
  -- add package configuration options here
    leanOptions := #[
    ⟨`autoImplicit, false⟩,
    ⟨`relaxedAutoImplicit, false⟩
  ]

lean_lib «Mdgen» where
  -- add library configuration options here

@[default_target]
lean_exe «mdgen» where
  -- executed when `lake exe mdgen` runs
  root := `Main
  supportInterpreter := true
