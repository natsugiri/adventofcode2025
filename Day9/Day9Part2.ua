# area ? Point0 Point1
Area ← /×+₁⌵- ∩(⊟°ℂ)

# b - ai <- a + bi
RotateRight ← ℂ⤚⋅¯°ℂ

# Point ? Pre Cur Nxt
OutCorner ← +RotateRight+⊃(±-|±-◌|⋅∘)

# Check weakly ascending or descending
# Boolean ? x0 x1 x2
Ordered ← ≥₀×⊃(-|⋅-)

# Check Line(a, b) is crossing Line(c, d);
# Boolean ? a b c d
CrossEdgeEdge ← (
  /×≡(↥⊃(Ordered⊙⤚⋅∘|Ordered⋅⤚⋅∘)°⊟₄)⍉⊟₄∩₄[°ℂ]
)

# Boolean ? a b StencilPolygon
CrossEdgePolygon ← (
  /↥≡(CrossEdgeEdge⊙⊙°⊟)
)

# EdgeList ? Corner0 Corner1
Edges ← (
  ◡∩°ℂ
  ⊃(ℂ⊙⋅◌|⋅˜ℂ)
  ⊃[[⊙⋅∘]|[⊙⋅⋅∘]|[⋅⊙∘]|[⋅⊙⋅∘]]
)

# Booealn ? Rect Polygon
CrossRectPolygon ← (
  ⊓(Edges°⊟|¤⧈⊟⊂⊸⊣)
  /↥≡(CrossEdgePolygon°⊟)
)

#################
# Main
#################
⍢(□&sc|≠₀◇type)□&sc # Input
≡(˜ℂ°⊟⊜⋕⊸≠@,°□)     # Parse

⊂⊂⊸⊃(⊣|∘|⊢)
⧈OutCorner # OutPolygon Polygon

⤙⤙⊙◌    # Polygon Polygon OutPolygon
♭₂⊞(⍆⊟) # All rectangles
◴
⊙¤
⤚≡(CrossRectPolygon)
▽¬ # Valid rects

/↥≡(Area°⊟)

# $ time uiua run Day9Part2.ua < input.txt
# 1508918480

# real    56m5.857s
# user    0m0.062s
# sys     0m0.093s
