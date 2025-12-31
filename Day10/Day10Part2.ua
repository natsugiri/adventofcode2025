{"[.##.] (3) (1,3) (2) (2,3) (0,2) (0,1) {3,5,4,7}"
 "[...#.] (0,2,3,4) (2,3) (0,4) (0,1,2) (1,2,3,4) {7,5,12,7,2}"
 "[.###.#] (0,1,2,3,4) (0,3,4) (0,1,2,4,5) (1,2) {10,11,11,5,10,5}"}

# Bits ? String
ParseTarget ← °⋯=@#

# BitMaskList ? ButtonsString
ParseButtons ← (
  ⊜□⊸≠@  # Separate by space
  ≡(
    °□
    °⋯°⊚⊜⋕⊸≠@,↘₋₁↘₁ # To bits
  )
)

ParseJoltage ← (
  ⊜⋕⊸≠@,
)

# Bool ? List List
ParityCheck       ← /↧⬚0=∩◿₂
GreaterEqualCheck ← /↧≥

┌─╴Data
  ~ {
    Len
    Target
    Buttons
    Joltage
    ButtonSet ← []
  }

  # List ? BitSet Data
  OddSet ← (
    ˜⬚0↙BinarySum⬚0▽⊓⋯⊃(Buttons|Len)
  )

  # Set ? Data
  BuildButtonSet ← (
    ⇡˜ⁿ2⧻⊸Buttons
    ⊙¤
    ≡OddSet
  )

  Parse ← (
    Data⊓(⧻⟜ParseTarget|ParseButtons|ParseJoltage)°$"[_] _ {_}"
    ⊸BuildButtonSet
    ˜⍜ButtonSet⋅∘
  )

└─╴

# Joltage Shift ? Joltage
Shift ← ⍢(⊓(÷₂|×₂)|=₀/↥◿₂)⊙1

# CostList NodeList ? Joltage Data
Neighbor ← (
  ⊸Shift             # Reduced Cost Joltage ? Joltage
  ◡⋅⋅⋅Data~ButtonSet # ButtonSet Reduced Rate Joltage Data
  ⊙¤
  ◡≡(×⊃(ParityCheck|GreaterEqualCheck))
  ⊃(⊚|▽)                # Index ButtonSet Reduced Rate Joltage Data
  ⊃(×⊙⋅◌≡(/+⋯)|-⊙¤×⋅⊙◌) # Cost Next Data
  ⊙⊙◌
)

# Bool ? Joltage
IsEnd ← =₀/↥

◌                   # Pop tests
⍢(□&sc|≠₀◇type)□&sc # Input

≡Data!(
  Parse
  ⊸(&p Buttons)
  ⊸Joltage
  path(Neighbor|IsEnd) # Paths MinCost
  ◌                    # Pop paths
)

/+
