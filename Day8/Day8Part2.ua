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

  # Linked UnionFind ? Vertex Vertex UnionFind
  Link ← (
    ◡≠⊙Root⤚⋅∘⊙Root # Bool V V UF ?
    ⨬(0⋅⋅∘
    | ◡∩⌟⊡
      ⨬(|⤚⋅∘)<
      ⊙⤚⤙⊡
      ⤚⍜⊡+
      ⤙⊙⊙◌
      ⍜⊡⋅∘
      1
    )
  )

  # Bool UnionFind ? Vertex Vertex UnionFind
  Same ← =⊙Root⤚⋅∘⊙Root
└─╴

⍢(□&sc|≠₀◇type)□&sc # Input
≡(⊜⋕⊸≠@,°□)         # Parse

# Answer ? List
Solve ← (
  ⇡⤚⊙∘⊸⧻
  # Gen List<[dist prod i j]>
  ≡(□≡(|3 ⊟₄⊃(Dist|×∩⊢)⤚₂∩⌟⊏)⊸⇡⊙¤)⊙¤
  /◇⊂
  ⍆
  ⤚⋅∘
  # N Links
  UnionFind!(
    New                          # UF ? N
    ⤚⋅∘                          # Links UF ? UF Links
    ⊙⊙0                          # Links UF 0 ?
    ∧(⊃(⋅⋅∘|⊡⊙˜⊟:⊙⊙◌)⊙Link°⊟₃↘₁) # TODO
  )
  ◌ # Pop UF
)

Solve
