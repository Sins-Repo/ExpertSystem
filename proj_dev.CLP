(defrule startup
  (initial-fact)
  =>
  (printout t "Definite budget? (yes/no)" crlf)
  (assert (startup-budget (lowcase(read))))
)


(defrule knownchampion
  (startup-budget yes)
  =>
  (printout t "Known champion for it? (yes/no)" crlf)
  (assert (known-champion (lowcase(read))))
)

(defrule projscope
  (startup-budget yes)
  (known-champion yes)
  =>
  (printout t "Clear project scope? (yes/no)" crlf)
  (assert (clear-scope (lowcase(read))))
)

(defrule timescale
  (startup-budget yes)
  (known-champion yes)
  (clear-scope yes)
  =>
  (printout t "Achievable Timescale? (yes/no)" crlf)
  (assert (achievable-timescale (lowcase(read))))
)

(defrule goforit
  (startup-budget yes)
  (known-champion yes)
  (clear-scope yes)
  (achievable-timescale yes)
  =>
  (printout t "Go for it." crlf)
)


(defrule moretime
  (startup-budget yes)
  (known-champion yes)
  (clear-scope yes)
  (achievable-timescale no)
  =>
  (printout t "Get more time" crlf)
)

(defrule profit
  (startup-budget yes)
  (known-champion yes)
  (clear-scope no)
  =>
  (printout t "Happy to profit? (yes/no)" crlf)
  (assert (happy-profit (lowcase(read))))
)

(defrule cashin
  (startup-budget yes)
  (known-champion yes)
  (clear-scope no)
  (happy-profit yes)
  =>
  (printout t "Cash in" crlf)
)

(defrule whymatter
  (startup-budget yes)
  (known-champion yes)
  (clear-scope no)
  (happy-profit no)
  =>
  (printout t "Explain why it matters" crlf)
)


(defrule leaveit
  (startup-budget yes)
  (known-champion no)
  =>
  (printout t "Leave it alone" crlf)
)


(defrule alternatefunding
  (startup-budget no)
  =>
  (printout t "Alternate funding? (yes/no)" crlf)
  (assert (alternate-funding (lowcase(read))))
)


(defrule sortout
  (startup-budget no)
  (alternate-funding yes)
  =>
  (printout t "Sort out funding" crlf)
)


(defrule leaveitalone
  (startup-budget no)
  (alternate-funding no)
  =>
  (printout t "Leave it alone" crlf)
)
