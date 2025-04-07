outputFile ← "helloworld.ll"⊣´•args

str ← "Hello, World!"

outputFile •FLines ⟨
    "@str = constant ["∾(•Repr 1+≠str)∾" x i8] c"""∾str∾"\00"""
    ""
    "declare i32 @puts(ptr)"
    ""
    "define i32 @main() {"
    "  call i32 @puts(ptr @str)"
    "  ret i32 0"
    "}"
⟩