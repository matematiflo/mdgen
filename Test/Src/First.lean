/-
# block comment in top of the file
this is a block comment
-/

-- this is a test of inline comment

-- ignore these line --#
import Lean --#

--#--
def thisIsIgnored : Nat := 0

def thisIsAlsoIgnored : Nat := 0
--#--

/-! ## module comment
this is a module comment
-/

/-! ## markdown content
This is a list
* first
* second
* third

This is a [link](hoge).
This is a **bold text**.
This is a `inline code`.
This is a block code:
```lean
def hoge : Nat := 0
```
This is an *italic text*.
-/

variable (P Q : Prop)

example (hQ : Q) : P → Q := by
  -- test of lean codes
  intro _
  exact hQ

/-- test of doc comment -/
example (h : P) : P ∨ Q := by
  /-
  test of inner block comments
  -/
  apply Or.inl
  exact h

/- ## nested comment
Here is a sample of nested block comment:
/- Hi. I am a nested comment! -/

Here is another example of nested block comment:
```lean
/-! ### sample -/

/- wao. this is another sample!! -/

/-- this is doc comment in comment block -/
def foo : Nat := 0
```
-/
