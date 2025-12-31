⍢(□&sc|≠₀◇type)□&sc # Input

≡(
  °$"_: _"°□
  ⊙(□⊜∘⊸≠@ )
)
map # @x3 => Box[@x3] ; Adj list

# Topological Sort
┌─╴Worker
  ~ {
    Queue
    Vers
    InDeg
    Adj
    Order
    EmptyArray
  }
  # List ? Worker CurV
  NeighborList ← °□⬚∘˜get⊃(EmptyArray|Adj)

  # Bool ? Worker
  Cond ↚ >₀⧻Queue

  # Worker ? Worker
  Step ↚ (
    ⍜Queue(⊃↘₁⊢)     # Worker NextV; Pick cur ver;
    ⍜Order⊸⊂         # Worker CurV; Push to Order;
    ⟜⊸NeighborList   # Worker Neighbor CurV;
    ⍜InDeg(⊸˜⍜get-₁) # Worker Neighbor CurV; Decrease;
    ⟜(▽=₀⊸˜getInDeg) # Worker ZeroNeighbor CurV; Keep next neighbors;
    ⊙◌⍜Queue⊂        # Worker; Join to queue;
  )

  New ← (
    ⊸°map
    ⤚⤚⋅⊙⊙∘⊸↙₀
    ⊙(°⊚⊛⟜◴°□/⍚⊂)
    ⟜(⬚0↯¤⧻)◴˜⊂⊙⤚⋅∘ # Vertices In-degree Adj
    ◡⋅=₀
    ⊙⟜map
    Worker⊸▽ # Que Vers InDeg Adj
    ⍢(Step|Cond)
  )

  # InDeg を DP table として使いまわす;
  # Worker ? Worker StartV
  Dynamic ← (
    ⍜InDeg(map⊙(⊚⧻)°map) # Reset InDeg
    ⍜InDeg(⍜˜get+₁)
    ⊸Order
    ∧(
      ⤙⊃(˜NeighborList|get⊙InDeg) # Worker Neighbors Value;
      ⍜InDeg(⍜˜get+)
    )
  )
└─╴

# Count ? List Worker
ChainPath ← (
  ⊙¤
  ⧈⊟
  ≡(˜get Worker~InDeg Worker~Dynamic ⤙⊙⊙◌°⊟)
  /×
)

Worker~New
# DAG なので片方は 0 であるが、題意通り両方を計算する;
+⊃(
  ChainPath["svr" "fft" "dac" "out"]
| ChainPath["svr" "dac" "fft" "out"]
)
