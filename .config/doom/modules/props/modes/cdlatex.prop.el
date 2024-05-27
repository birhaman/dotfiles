(setq-default cdlatex-command-alist-default
  '(
    ("lr("       "Insert a \\left( \\right) pair"
     "(" cdlatex-lr-pair nil nil t)
    ("lr["        "Insert a \\left[ \\right] pair"
     "[" cdlatex-lr-pair nil nil t)
    ("lr{"        "Insert a \\left{ \\right} pair"
     "{" cdlatex-lr-pair nil nil t)
    ("lr<"        "Insert a \\left\\langle \\right\\rangle pair"
     "<" cdlatex-lr-pair nil nil t)
    ("lr|"        "Insert a \\left| \\right| pair"
     "|" cdlatex-lr-pair nil nil t)
    ("caseeq"     "Insert a = { construct"
     "\\left\\{ \n\\begin{array}{l@{\\quad:\\quad}l}\n? & \\\\\n & \n\\end{array}\\right." cdlatex-position-cursor nil nil t)
    ("fr"         "Insert \\frac{}{}"
     "\\frac{?}{}"           cdlatex-position-cursor nil nil t)
    ("fr/"         "Insert \\sfrac{}{}"
     "\\sfrac{?}{}"           cdlatex-position-cursor nil nil t)
    ("cfr"         "Insert \\sfrac{}{}"
     "\\cfrac{?}{"           cdlatex-position-cursor nil nil t)
    ("sq"         "Insert \\sqrt{}"
     "\\sqrt{?}"             cdlatex-position-cursor nil nil t)
    ("intl"       "Insert \\int\\limits_{}^{}"
     "\\int\\limits_{?}^{}"  cdlatex-position-cursor nil nil t)
    ("log"       "Insert logarithm"
     "\\log_{?}"  cdlatex-position-cursor nil nil t)
    ("oint"       "Insert \\oint\\limits_{}^{}"
     "\\oint\\limits_{?}^{}"  cdlatex-position-cursor nil nil t)
    ("iint"       "Insert \\idotsint\\limits_{}^{}"
     "\\idotsint\\limits_{?}^{}"  cdlatex-position-cursor nil nil t)
    ("sum"       "Insert \\sum\\limits_{}^{}"
     "\\sum\\limits_{?}^{}"  cdlatex-position-cursor nil nil t)
    ("2sum"       "Insert \\sum\\limits_{}^{}"
     "\\sum\\limits_{?}^{}\\sum\\limits_{}^{}"  cdlatex-position-cursor nil nil t)
    ("prod"       "Insert \\prod_{?}^{} f(i)"
     "\\prod_{?}^{} f(i)"  cdlatex-position-cursor nil nil t)
    ("lim"       "Insert \\lim_{?}^{} f(i)"
     "\\lim_{x\\to\\infty}"  cdlatex-position-cursor nil nil t)
    ("nonum"      "Insert \\nonumber\\\\"
     "\\nonumber\\\\\n"      nil nil nil t)
    ("fn"         "Make a footnote"
     "\\footnote{?}" cdlatex-position-cursor nil t nil)
    ("dx"         "Insert dx env"
     "\\,dx" cdlatex-position-cursor nil nil t)

    ("div"         "Insert dx env"
     "\\operatorname{div}\\,{\\mathbf{?}}" cdlatex-position-cursor nil nil t)
    ("grad"         "Insert dx env"
     "\\operatorname{grad}\\,{\\mathbf{?}}" cdlatex-position-cursor nil nil t)
    ("rot"         "Insert dx env"
     "\\operatorname{rot}\\,{\\mathbf{?}}" cdlatex-position-cursor nil nil t)
    ("qd"         "Insert \\quad"
     "\\quad"        nil nil t t)

    ("op"         "Insert \\overrline"
     "\\operatorname{?}"          cdlatex-position-cursor nil nil t)
    ("ol"         "Insert \\overrline"
     "\\overline{?}"          cdlatex-position-cursor nil nil t)
    ("ora"         "Insert \\overrightarrow"
     "\\overrightarrow{?}"    cdlatex-position-cursor nil nil t)
    ("qqd"        "Insert \\qquad"
     "\\qquad"       nil nil t t)
 ;; Cases & binoms
    ("cas"       "Insert optional matrix"
     "\\begin{cases} ? \\\\ \\end{cases}"  cdlatex-position-cursor nil nil t)
 ;; Cases & binoms
    ("neq"       "Insert optional matrix"
     "\\begin{align*} ? \\\\ \\end{align*}"  cdlatex-position-cursor nil nil t)
 ;; Matrices
    ("mat"       "Insert optional matrix"
     "\\begin{vmatrix} ? \\\\ \\end{vmatrix}"  cdlatex-position-cursor nil nil t)
    ("matb"       "Insert optional matrix"
     "\\begin{bmatrix} ? \\\\ \\end{bmatrix}"  cdlatex-position-cursor nil nil t)
    ("matpr"       "Insert optional matrix"
     "\\begin{pmatrix} ? \\\\ \\end{pmatrix}"  cdlatex-position-cursor nil nil t)
    ("mat:lined"       "Insert optional matrix"
     "\\begin{Vmatrix} ? \\\\ \\end{Vmatrix}"  cdlatex-position-cursor nil nil t)
    ("mat:clean"       "Insert optional matrix"
     "\\begin{matrix} ? \\\\ \\end{matrix}"  cdlatex-position-cursor nil nil t)
 ;; Trigonometric functions
    ("sin"       "Insert \\func{}"
     "\\sin{?}"  cdlatex-position-cursor nil nil t)
    ("cos"       "Insert \\func{}"
     "\\cos{?}"  cdlatex-position-cursor nil nil t)
    ("tan"       "Insert \\func{}"
     "\\tan{?}"  cdlatex-position-cursor nil nil t)
    ("ctan"       "Insert \\func{}"
     "\\cot{?}"  cdlatex-position-cursor nil nil t)
    ("sec"       "Insert \\func{}"
     "\\sec{?}"  cdlatex-position-cursor nil nil t)
    ("csc"       "Insert \\func{}"
     "\\csc{?}"  cdlatex-position-cursor nil nil t)

    ("asin"       "Insert \\func{}"
     "\\arcsin{?}"  cdlatex-position-cursor nil nil t)
    ("acos"       "Insert \\func{}"
     "\\arccos{?}"  cdlatex-position-cursor nil nil t)
    ("atan"       "Insert \\func{}"
     "\\arctan{?}"  cdlatex-position-cursor nil nil t)
    ("actan"       "Insert \\func{}"
     "\\arccot{?}"  cdlatex-position-cursor nil nil t)
    ("asec"       "Insert \\func{}"
     "\\arcsec{?}"  cdlatex-position-cursor nil nil t)
    ("acsc"       "Insert \\func{}"
     "\\arccsc{?}"  cdlatex-position-cursor nil nil t)

  ;; Hyperbolic functions
    ("sinh"       "Insert \\func{}"
     "\\sinh{?}"  cdlatex-position-cursor nil nil t)
    ("cosh"       "Insert \\func{}"
     "\\cosh{?}"  cdlatex-position-cursor nil nil t)
    ("tanh"       "Insert \\func{}"
     "\\tanh{?}"  cdlatex-position-cursor nil nil t)
    ("ctanh"       "Insert \\func{}"
     "\\coth{?}"  cdlatex-position-cursor nil nil t)
    ("sech"       "Insert \\func{}"
     "\\operatorname{sech}{?}"  cdlatex-position-cursor nil nil t)
    ("csch"       "Insert \\func{}"
     "\\operatorname{csch}{?}"  cdlatex-position-cursor nil nil t)


    ("pref"      "Make page reference"
     "" reftex-reference nil t t)
    ("ref"       "Make reference"
     "" reftex-reference nil t t)

    ("lbl"       "Insert automatic label at point"
     "" reftex-label nil t t)

    ("ct"        "Insert \\cite"
     "\\cite{?}" cdlatex-position-cursor nil t nil)
    ("cte"       "Make a citation interactively"
     "" reftex-citation nil t nil)
    ("cite{"       "Make a citation interactively"
     "cite{" reftex-citation nil t nil)

    ("beg"       "Complete an environment name and insert template"
     "" cdlatex-environment nil t t)
    ("env"       "Complete an environment name and insert template"
     "" cdlatex-environment nil t t)
    ("it"        "New item in current environment"
     "" cdlatex-item nil t t)
    ("ite"       "Insert an ITEMIZE environment template"
     "" cdlatex-environment ("itemize") t nil)
    ("enu"       "Insert an ENUMERATE environment template"
     "" cdlatex-environment ("enumerate") t nil)
    ("equ"       "Insert an EQUATION environment template"
     "" cdlatex-environment ("equation") t nil)
    ("eqn"       "Insert an EQUATION environment template"
     "" cdlatex-environment ("eqnarray") t nil)
    ("ali"       "Insert an ALIGN environment template"
     "" cdlatex-environment ("align") t nil)
    ("ali*"      "Insert an ALIGN* environment template"
     "" cdlatex-environment ("align*") t nil)
    ("alit"      "Insert an ALIGNAT environment template"
     "" cdlatex-environment ("alignat") t nil)
    ("alit*"     "Insert an ALIGNAT* environment template"
     "" cdlatex-environment ("alignat*") t nil)
    ("xal"       "Insert a XALIGNAT environment template"
     "" cdlatex-environment ("xalignat") t nil)
    ("xal*"      "Insert a XALIGNAT* environment template"
     "" cdlatex-environment ("xalignat*") t nil)
    ("xxa"       "Insert a XXALIGNAT environment template"
     "" cdlatex-environment ("xxalignat") t nil)
    ("xxa*"      "Insert a XXALIGNAT environment template"
     "" cdlatex-environment ("xxalignat") t nil)
    ("mul"       "Insert a MULTINE environment template"
     "" cdlatex-environment ("multline") t nil)
    ("mul*"      "Insert a MULTINE* environment template"
     "" cdlatex-environment ("multline*") t nil)
    ("gat"       "Insert a GATHER environment template"
     "" cdlatex-environment ("gather") t nil)
    ("gat*"      "Insert a GATHER* environment template"
     "" cdlatex-environment ("gather*") t nil)
    ("spl"       "Insert SPLIT environment template"
     "" cdlatex-environment ("split") nil t)
    ("fla"       "Insert a FLALIGN environment template"
     "" cdlatex-environment ("flalign") t nil)
    ("fla*"      "Insert a FLALIGN* environment template"
     "" cdlatex-environment ("flalign*") t nil)
    ("fg"        "Insert a FIGURE environment template"
     "" cdlatex-environment ("figure") t nil)

    ("sn"        "Insert a \\section{} statement"
     "\\section{?}" cdlatex-position-cursor nil t nil)
    ("ss"        "Insert a \\subsection{} statement"
     "\\subsection{?}" cdlatex-position-cursor nil t nil)
    ("sss"       "Insert a \\subsubsection{} statement"
     "\\subsubsection{?}" cdlatex-position-cursor nil t nil)
    ("pf"        "Insert a \\paragraph{} statement"
     "\\paragraph{?}" cdlatex-position-cursor nil t nil)
    ("sp"        "Insert a \\subparagraph{} statement"
     "\\subparagraph{?}" cdlatex-position-cursor nil t nil)
    ("ssp"       "Insert a \\subsubparagraph{} statement"
     "\\subsubparagraph{?}" cdlatex-position-cursor nil t nil)

    ("cl"        "Insert \\centerline"
     "\\centerline{?}" cdlatex-position-cursor nil t nil)
    ("inc"        "Insert \\includegraphics with file name"
     "\\includegraphics[]{?}" (lambda ()
                                (cdlatex-position-cursor)
                                (call-interactively 'cdlatex-insert-filename)
                                (forward-char 1))
     nil t nil)))

(setq-default cdlatex-math-modify-alist
  '(
    ( ?\.   "\\cdot{?}"           nil        t   nil   nil )
    ( ?\:   "\\ddot"              nil        t   t   nil )
    ( ?\~   "\\tilde"             nil        t   t   nil )
    ( ?N    "\\widetilde"         nil        t   t   nil )
    ( ?o    "\\mathring"          nil        t   t   nil )
    ( ?^    "\\hat"               nil        t   t   nil )
    ( ?H    "\\widehat"           nil        t   t   nil )
    ( ?\-   "{\\vec ?}"               nil        t   t   nil )
    ( ?T    "\\overline"          nil        t   nil nil )
    ( ?\_   "\\underline"         nil        t   nil nil )
    ( ?\]   "\\overbrace"         nil        t   nil nil )
    ( ?\}   "\\underbrace"        nil        t   nil nil )
    ( ?\>   "\\overrightarrow{?}"      t   t   nil )
    ( ?\<   "\\overleftarrow{?}"       t   t   nil )
    ( ?/    nil             nil        t   t   nil )
    ( ?v    nil nil       t   t   nil )
    ( ?u    "\\breve"             nil        t   t   nil )
    ( ?m    "\\mbox"              nil        t   nil nil )
    ( ?t    "\\text"              nil        t   nil nil )
    ( ?c    "\\mathcal"           nil        t   nil nil )
    ( ?r    "\\mathrm"            "\\textrm" t   nil nil )
    ( ?i    "\\mathit"            "\\textit" t   nil nil )
    ( ?l    nil                   "\\textsl" t   nil nil )
    ( ?b    "\\mathbf"            "\\textbf" t   nil nil )
    ( ?e    "\\mathem"            "\\emph"   t   nil nil )
    ( ?y    "\\mathtt"            "\\texttt" t   nil nil )
    ( ?f    "\\mathsf"            "\\textsf" t   nil nil )
    ( ?o    "\\?^{\\circ}"        nil        nil nil nil )
    ( ?0    "\\textstyle"         nil        nil nil nil )
    ( ?1    "\\displaystyle"      nil        nil nil nil )
    ( ?2    "\\scriptstyle"       nil        nil nil nil )
    ( ?3    "\\scriptscriptstyle" nil        nil nil nil )
    ( ?\(   "\\left( ? \\right)"  nil        nil nil nil )
    ( ?\[   "\\left[ ? \\right]"  nil        nil nil nil )
    ( ?\{   "\\left\\{ ? \\right\\}" nil     nil nil nil )
    ( ?<    "\\left< ? \\right>"  nil        nil nil nil )
    ( ?|    "\\left| ? \\right|"  nil        nil nil nil )
    ))

(setq-default cdlatex-math-symbol-alist
  '(
    ( ?a  ("\\angle"          "\\measuredangle"   "\\amalg"))
    ( ?A  ("\\forall"         "\\aleph"))
    ( ?b  ("\\mathbf{?}"      "\\mathbb{?}"   ))
    ( ?B  (""                 ))
    ( ?c  (""                 ""                "\\cos"))
    ( ?C  (""                 ""                "\\arccos"))
    ( ?d  ("\\partial"        "\\eth"))
    ( ?D  ("\\Delta"          "\\nabla"))
    ( ?e  (""        "\\varepsilon"    "\\exp"))
    ( ?E  ("\\exists"         ""                "\\ln"))
    ( ?f  ("\\varphi"            "\\varphi"))
    ( ?F  ("\\nexists"                 ))
    ( ?g  (""          ""                "\\lg"))
    ( ?G  (""          ""                "10^{?}"))
    ( ?h  ("\\hbar"            "\\hbar"))
    ( ?H  (""                 ))
    ( ?i  ("\\in"     "\\ni"     ))
    ( ?I  (""                 "\\Im"))
    ( ?j  (""                 "\\jmath"))
    ( ?J  (""                 ))
    ( ?k  (""          ))
    ( ?K  (""                 ))
    ( ?l  ("\\log_{?}"))
    ( ?L  (""         ))
    ( ?m  (""             ))
    ( ?M  (""                 ))
    ( ?n  ("\\not"  "\\varnothing"     ))
    ( ?N  ("\\nabla"          ""                "\\exp"))
    ( ?o  ("\\varnothing"          ))
    ( ?O  (""    ))
    ( ?p  ("\\pi"             "\\varpi"))
    ( ?P  (""             ))
    ( ?q  (""          "\\vartheta"))
    ( ?Q  (""          ))
    ( ?r  (""            "\\varrho"))
    ( ?R  (""                 "\\Re"))
    ( ?s  ("\\square"       ))
    ( ?S  ("\\supset"          ""                "\\arcsin"))
    ( ?t  ("\\mapsto"    ))
    ( ?T  ("\\perp"                 ""                "\\arctan"))
    ( ?u  ("\\cup"       ))
    ( ?U  ("\\cap"        ))
    ( ?v  ("\\vee"               "\\wedge"           ))
    ( ?V  ("\\lor"          ))
    ( ?w  ("\\omega"   "\\wp"          ))
    ( ?W  (""             ))
    ( ?x  (""            ))
    ( ?X  (""                 ))
    ( ?y  (""            ))
    ( ?Y  (""            ))
    ( ?z  ("\\zeta"           ))
    ( ?Z  (""                 ))
    ( ?!  ("\\downarrow" "\\uparrow"            ))
    ( ?@  (""                 ))
    ( ?#  (""                 ))
    ( ?$  (""                 ))
    ( ?%  (""                 ))
    ( ?^  ("\\?^{\\circ}"        ))
    ( ?&  ("\\wedge"          ))
    ( ?\? (""                 ))
    ( ?~  ("\\approx"         "\\simeq"))
    ( ?_  ("\\downarrow"      ))
    ( ?+  ("\\plus"           "\\oplus"             "\\uplus"           ))
    ( ?-  ("\\minus"          "\\ominus"            "\\neg"  ))
    ( ?*  ("\\times"          "\\otimes"          ))
    ( ?:  ("\\colon"          "\\div"               "\\propto"        ))
    ( ?/  ("\\slash"          "\\oslash"            ))
    ( ?\\  ("\\setminus"         ))
    ( ?=  ("\\equiv"          "\\cong"              "\\doteq"))
    ( ?\( ("\\subset"         "\\sqsubset"))
    ( ?\) ("\\supset"         "\\sqsupset"))
    ( ?\[ ("\\Leftarrow"      "\\Longleftarrow"))
    ( ?\] ("\\Rightarrow"     "\\Longrightarrow"))
    ( ?<  ("\\langle"      "\\longleftarrow"     "\\longleftarrow"))
    ( ?>  ("\\rangle"        "\\longrightarrow"    "\\longrightarrow"))
    ( ?{  ("\\leqslant"       "\\prec"   ))
    ( ?}  ("\\geqslant"       "\\succ"    ))
    ( ?`  (""                 ))
    ( ?'  ("\\prime"          ))
    ( ?.  ("\\cdot{?}"           "\\odot"           ))
    ( ?|  ("\\parallel{?}"       "\\dagger"           ))

    ( ?   (""                 ))
    ( ?0  ("\\emptyset"       ))
    ( ?1  (""                 ))
    ( ?2  (""                 ))
    ( ?3  ("\\triangle"                 ))
    ( ?4  ("\\square"                 ))
    ( ?5  (""                 ))
    ( ?6  (""                 ))
    ( ?7  (""                 ))
    ( ?8  ("\\infty"          ))
    ( ?9  (""                 ))

    ( ?α  ("\\alpha"           "\\aleph"))
    ( ?Α  ("\\Alpha"           "\\aleph"))
    ( ?β  ("\\beta"            "\\beth"))
    ( ?γ  ("\\gamma"           "\\gimel"))
    ( ?Γ  ("\\Gamma"           ))
    ( ?δ  ("\\delta"           ))
    ( ?Δ  ("\\Delta"           "\\nabla"))
    ( ?ε  ("\\varepsilon"      ))
    ( ?ζ  ("\\zeta"            ))
    ( ?η  ("\\eta"             ))
    ( ?θ  ("\\theta"           ))
    ( ?ι  ("\\iota"            ))
    ( ?κ  ("\\kappa"           ))
    ( ?λ  ("\\lambda"               ))
    ( ?μ  ("\\mu"              ))
    ( ?ν  ("\\nu"              ))
    ( ?ξ  ("\\xi"              ))
    ( ?Ξ  ("\\Xi"              ))
    ( ?ο  ("\\omicron"         ))
    ( ?π  ("\\pi"              ))
    ( ?Π  ("\\Pi"              ))
    ( ?ρ  ("\\rho"             ))
    ( ?σ  ("\\sigma"           ))
    ( ?Σ  ("\\Sigma"           ))
    ( ?τ  ("\\tau"             ))
    ( ?υ  ("\\upsilon"         ))
    ( ?Υ  ("\\Upsilon"         ))
    ( ?φ  ("\\varphi"          ))
    ( ?Φ  ("\\Phi"             ))
    ( ?χ  ("\\chi"             ))
    ( ?ψ  ("\\psi"             ))
    ( ?Ψ  ("\\Psi"             ))
    ( ?ω  ("\\omega"           ))
    ( ?Ω  ("\\Omega"           ))

    ))
