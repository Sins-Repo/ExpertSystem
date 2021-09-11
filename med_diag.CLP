(defrule Q1
   (initial-fact)
   =>
   (printout t crlf "Please indicate "P" for Positive / "N" for Negative." crlf)
   (printout t crlf "HBsAg test result: ")
   (assert (HBsAg (upcase(read)))))


(defrule Q2
   (HBsAg P)
   =>
   (printout t crlf "anti-HDV test result: ")
   (assert (anti-HDV (upcase(read)))))


(defrule rule-A
   (HBsAg P)
   (anti-HDV P)
   =>
   (printout t crlf "The prediction is: Hepatitis B + D." crlf))


(defrule Q3
   (HBsAg P)
   (anti-HDV N)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))


(defrule rule-E
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Uncertain Configuration." crlf))


(defrule Q4
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   =>
   (printout t crlf "anti-HBs test result: ")
   (assert (anti-HBs (upcase(read)))))


(defrule rule-B
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs P)
   =>
   (printout t crlf "The prediction is: Uncertain Configuration." crlf))


(defrule Q5
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   =>
   (printout t crlf "IgM anti-HBc test result: ")
   (assert (IgManti-HBc (upcase(read)))))


(defrule rule-C
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc P)
   =>
   (printout t crlf "The prediction is: Acute Infection." crlf))


(defrule rule-D
   (HBsAg P)
   (anti-HDV N)
   (anti-HBc P)
   (anti-HBs N)
   (IgManti-HBc N)
   =>
   (printout t crlf "The prediction is: Chronic Infection." crlf))



(defrule Q6
   (HBsAg N)
   =>
   (printout t crlf "anti-HBs test result: ")
   (assert (anti-HBs (upcase(read)))))


(defrule Q7
   (HBsAg N)
   (anti-HBs P)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))


(defrule rule-F
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc P)
   =>
   (printout t crlf "The prediction is: Cured." crlf))


(defrule rule-G
   (HBsAg N)
   (anti-HBs P)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Vaccinated." crlf))


(defrule Q8
   (HBsAg N)
   (anti-HBs N)
   =>
   (printout t crlf "anti-HBc test result: ")
   (assert (anti-HBc (upcase(read)))))


(defrule rule-H
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc P)
   =>
   (printout t crlf "The prediction is: Unclear (Possible Resolved)." crlf))


(defrule rule-I
   (HBsAg N)
   (anti-HBs N)
   (anti-HBc N)
   =>
   (printout t crlf "The prediction is: Healthy not vaccinated or suspicious." crlf))