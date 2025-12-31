# 10桁 9999999999 以下を仮定する

# f(0) := 0
# f(1) := 0
# f(x) := -mu(x)
InEx ← [0 0 1 1 0 1 ¯1 1 0 0 ¯1]

# SignedNums ? Seed Rep
Rep ← ×˜⊡InEx⤙⍜°⋕(/⊂˜↯)

Reps₁    ← ♭⊞Rep⇡₁9⇡₂9
Reps₂    ← ♭⊞Rep⇡₁₀90⇡₂4
Reps₃    ← ♭⊞Rep⇡₁₀₀900[2 3]
RepsMore ← ≡Rep⇡₁₀₀₀ 99000 2

List ← ⊂⊂⊂ Reps₁ Reps₂ Reps₃ RepsMore

# Sum ? Bound
Calc ← /+×List≥⌵List

⊜(⊜⋕⊸≠@-)⊸≠@,&sc
/+≡(/-≡Calc⍜⊢-₁)
