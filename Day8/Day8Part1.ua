# 3 dimensional Euclidean distance
# Left, Right: 3 * R
# Dist ? Left Right
Dist ← ⍜ⁿ₂/+-

# UnionFind
┌─╴UnionFind
  # UnionFind ? Size
  New ← $UF -₁⊚

  # Vertex UnionFind ? Vertex UnionFind
  Root ← ⤙⍜⊏◌⊃(↘₋₂|⋅∘|⊡₋₂)⍢(˜⊂◡(⊡⊣)|≥₀⊣)¤

  # UnionFind ? Vertex Vertex UnionFind
  Link ← (
    ◡≠⊙Root⤚⋅∘⊙Root # Bool V V UF ?
    ⨬(⋅⋅∘
    | ◡∩⌟⊡
      ⨬(|⤚⋅∘)<
      ⊙⤚⤙⊡
      ⤚⍜⊡+
      ⤙⊙⊙◌
      ⍜⊡⋅∘
    )
  )

  # Bool UnionFind ? Vertex Vertex UnionFind
  Same ← =⊙Root⤚⋅∘⊙Root
└─╴

⍢(□&sc|≠₀◇type)□&sc # Input
≡(⊜⋕⊸≠@,°□)         # Parse

# Answer ? List Connecting
Solve ← (
  ⇡⤚⊙∘⊸⧻
  ≡(□≡(|3 ⊟₃Dist⤚₂∩⌟⊏)⊸⇡⊙¤)⊙¤
  /◇⊂
  ↙⤙⊙⊙◌⍆
  ⤚⋅∘

  UnionFind!(
    New
    ⤚⋅∘
    ∧(Link°⊟↘₁)
  )
  /×¯↙₃⍆
)

# For Sample Test
# Solve ⊙10

# For Main Test
Solve⊙1000
