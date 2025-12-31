# SecondLine ? FirstLine SecondLine
SecondLine ← ⍜⊡⋅@|⊢⊚=@S

# LowerLine ? UpperLine LowerLine
NextLine ← (
  ⊓(=@||=@^)
  ◡(⊃↻₋₁↻₁×)
  ↥⊙×₂↥↥
  ˜⊏".|^"
)

# [".S."
#  "..."
#  ".^."
#  "..."]
⍢(&sc|≠₀type)&sc
⍜(⊏0_1|⊟⟜SecondLine°⊟)
# Field 
⍜↘₁(
  ⇡⊸⧻
  ⧈⊟
  ∧⍜(⊏|⊟⟜NextLine°⊟)
)
# Sum
/+⧈(/+×⊓(=@||=@^))
