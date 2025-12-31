┌─╴Block
  ~ {Num}
  Read ← (
    ⍤"ERROR" =@:⊣&sc
    Block/+⍥(/+=@#&sc)3
    ⍤"ERROR" ≍""&sc
  )
└─╴

┌─╴Board
  ~ {H W List}
  Parse ← (
    ⊜⋕×⊸⊃(≥@0|≤@9)
    Board°(⊂⊟)
  )

  # Clearly YES;
  # NumPieces <= (H / 3) * (W / 3);
  # Boolean ? Board
  IsBigBoard ← (
    ≤×⊃(⌊÷3H|⌊÷3W|/+List)
  )

  # Cells ? Board BlockList
  FillingCells ↚ (
    /+×⊓(List|≡Block~Num)
  )

  # Cleary NO;
  # Never used...
  # Cells > Area
  # Boolean ? Board BlockList
  IsSmallBoard ← (
    >⊃(×⊃(H|W)|FillingCells)
  )
└─╴

¤⍥Block~Read 6
◌ # No need to use blocks

⍢(□&sc|≠₀◇type)□&sc

≡(
  °□
  Board~Parse
  Board~IsBigBoard
)
/+
