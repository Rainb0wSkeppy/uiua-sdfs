Dot ↚ +˜∩×∩°ℂ

# t ? A B Position
# Finds the value of t for the closest point on the
# curve At²+Bt from the position
QuadraticCurveClosestT ↚ (
  # the distance from a point on a quadratic curve to a
  # point is |At²+Bt-P|

  # to find the closest point on the curve from the point
  # you set the derirative of the distance to 0

  # (this is actually the derirative of the distance squared)

  ◡⊃($a ×4°√⌵|$b ×6Dot|$c -⊃(×4Dot ⊙⋅∘|×2°√⋅⌵)|$d×¯2Dot ⋅⊙∘)
  # ∂/∂t |At²+Bt-P|² = at³+bt²+ct+d

  # to find the roots of a cubic you first have to turn it
  # into a depressed cubic (u³+pu+q=0)

  # this divides by a, it only divides by 0 if the curve it
  # a straight line
  ∩₃⌞÷
  ⊃($p ÷3-⊓(°√|×3)
  | $q +-⊃(÷3×|×2/27°√₃)
  | $o ÷¯3)
  # t=u+o u³+pu+q=0

  # the discriminant of the cubic
  # if it's positive there is 1 solution
  # if it's negative there are 3 solutions
  ◡($Δ +⊓(÷27°√₃|÷4°√))

  ⊃(<0
  | # 1 root
    $u +∩⍜⌵√₃ ⊃+-⊓√÷₋₂ ⊙⋅∘
    $t ↧1↥0 +
  | # 3 roots

    ⋅⊃($θ˜-η°∿ ×⊃(÷⊓(×2|×3)|√˜÷¯3)|×2√÷¯3)
    # only getting 2 of the roots, the middle root can never
    # be the closest point
    ∩⌟($u ×∿+η) ⊸(+τ/3)÷3
    ∩⌟($t ↧1↥0 +)

    # find the closer root
    ⍜-× ⟜₂(< ∩⌟₃(⌵-+⊓⌞(×°√|×)))
  )
  
  # thank you harana for finding a faster way to do this
  ⍜(∩⌞▽∩₃♭|⋅∘)
)

# Distance ? Radius Position
Circle ← -⊙⌵

# Distance ? A B Position
Line ← ×⊙(⌵-×) ◡⊃(-⊸¬<0Dot×i|↧1↥0÷⊃(°√⌵|Dot)) ∩⌞-

# Distance ? Radius Position
Rectangle ← (
  +⊃(⌵ℂ∩↥₀|↧0↥)˜∩(-⊙⌵)∩°ℂ
)

# Distance ? A B C Position
Triangle ← ×⊃(±↥↥|↧↧∩₃⌵) ∩₃⌟Line ⊃(⊙⊙◌|⋅⊙∘|⊃⋅⋅∘⊙⋅◌)

# Distance ? Radius Position
EqulateralTriangle ← (
  ⊓(∩₃⌟× ¯i ∩ₑ τi/12 5τi/12
  | ⍜°ℂ⊙⌵)

  ⊃(Line ⊙⊙⋅∘|Line ⋅⊙⊙∘)
  ×⊃(±↥|↧∩⌵)
)

# Distance ? Radius Position
Square ← +⊃(⌵ℂ∩↥₀|↧0↥)∩⌞(-⊙⌵)⊙°ℂ

# Distance ? Radius Position
RegularPentagon ← (
  ⊓(∩₄⌟× ¯i ∩₃ₑ ¯πi/10 3πi/10 7πi/10
  | ⍜°ℂ⊙⌵)

  ⊃(Line ⊙⊙⋅⋅∘|Line ⋅⊙⊙⋅∘|Line ⋅⋅⊙⊙∘)
  ×⊃(±↥↥|↧↧∩₃⌵)
)

# Distance ? Radius Position
RegularHexagon ← (
  ⊓(∩₃⌟× 1 ∩ₑ πi/3 τi/3
  | ⍜°ℂ∩⌵)

  ⊃(Line ⊙⊙⋅∘|Line ⋅⊙⊙∘)
  ×⊃(±↥|↧∩⌵)
)

# Distance ? Radius Position
RegularOctagon ← (
  ⊓(∩₄⌟(×ₑ) ¯τi/16 τi/16 3τi/16 5τi/16
  | ⍜°ℂ∩⌵)

  ⊃(Line ⊙⊙⋅⋅∘|Line ⋅⊙⊙⋅∘|Line ⋅⋅⊙⊙∘)
  ×⊃(±↥↥|↧↧∩₃⌵)
)

# Distance ? P₀ P₁ P₂ Position
QuadraticBezier ← (
  # the equation for a point on a quadratic bezier curve is
  # t²(P₀-2P₁+P₂)+t(-2P₀+2P₁)+P₀
  # with P₀=(0, 0) it simplifies to t²(-2P₁+P₂)+t(2P₁)

  # the derirative of a quadratic bezier curve is
  # t(2P₀-4P₁+2P₂)-2P₀+2P₁
  # with P₀=(0, 0) it simplifies to t(-4P₁+2P₂)+2P₁
  ⊃($A -×2|$B ×2|$C -⊓(×4|×2)|$D ×2) ∩₃⌞-
  # t²(-2P₁+P₂)+t(2P₁) = At²+Bt
  # ∂/∂t t²(-2P₁+P₂)+t(2P₁) = Ct+D

  ◡(QuadraticCurveClosestT ⊙⊙⋅⋅∘)
  ⊃(+×⊙⋅⋅⊙∘|+⊓⌞(×°√|×)⊙⊙⊙⋅◌) ↧1↥0

  ×⊃(-⊸¬<0 Dot×i|⋅⌵)⊙-
)

# Image ? Distances Scale
VisualizeSDF ← (
  ⊃(⍉⍜-× 0.9_0.6_0.3 0.65_0.85_1 ¤<0
  | +0.85×0.15 ⍜⌵√∿+η×π/6×⌵
  | √↧1⌵×2
  | √¬↧1↥0-0.5×⌵)
  ↥××
)
