# {"[.##.] (3) (1,3) (2) (2,3) (0,2) (0,1) {3,5,4,7}"
#  "[...#.] (0,2,3,4) (2,3) (0,4) (0,1,2) (1,2,3,4) {7,5,12,7,2}"
#  "[.###.#] (0,1,2,3,4) (0,3,4) (0,1,2,4,5) (1,2) {10,11,11,5,10,5}"}

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

┌─╴Data
  ~ {Len Target Buttons Option}
  Parse ← Data⊓(⧻⟜ParseTarget|ParseButtons)°$"[_] _ {_}"
└─╴

⍢(□&sc|≠₀◇type)□&sc # Input

≡(
  Data~Parse
  0 ⊸Data~Target # Start Goal Data
  path(
    ⊙⋅Data~Buttons # Pop goal
    ≡(⍜(∩⋯|⬚0≠))
  | =)
  ⊢?  # Pick first solution
  -₁⧻ # Answer == len - 1
)

/+
