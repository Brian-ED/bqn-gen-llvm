outputFile ← "helloworld.ll"⊣´•args

# Pointers are safe if they're inside some range.
# I want to prove this range. If i can't, the programmer will. by adding asserts.
# I want this to be just as arbitrary as any other rule.

str ← "Hello, World!"

o ← ⟨
    "target triple = ""x86_64-unknown-linux-gnu""" # Literally just for avoiding a warning?
    "@str = constant ["∾(•Repr 1+≠str)∾" x i8] c"""∾str∾"\00"""
    ""
    # Get the libc puts function declaration.
    "declare i32 @puts(ptr)"
    ""
    "define i32 @main() {"
    "  call i32 @puts(ptr @str)"
    "  ret i32 0"
    "}"
⟩

outputFile •FLines o
