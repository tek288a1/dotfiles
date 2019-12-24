(TeX-add-style-hook
 "tk_ximera"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("cancel" "makeroom")))
   (TeX-run-style-hooks
    "tkz-euclide"
    "tikz"
    "tikz-cd"
    "pgffor"
    "environ"
    "cancel"
    "multicol"
    "array")
   (TeX-add-symbols
    '("pp" ["argument"] 1)
    '("seq" 1)
    '("eval" 1)
    "surfaceColor"
    "surfaceColorTwo"
    "sliceColor"
    "ddx"
    "dfn"
    "unit"))
 :latex)

