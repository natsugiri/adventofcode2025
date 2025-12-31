⍢(&sc|≠₀type)&sc

# Char Tail ? Turn String
Step ← ⊃(⊡|↘+₁)⊢⍖⊸↘¯

# Value ? String
Calc ← (
  ⇌⇡12⊙""
  ⋕◌∧(⊃(⋅∘|˜⊂⊙◌)Step)
)

/+≡Calc
