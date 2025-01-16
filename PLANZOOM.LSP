; Author: Richard Mehall
; Date: 1/2/25
; Description: Plan command with restoration of current viewsize and viewcenter
(defun c:PLANZOOM()
  (setq viewsize (getvar 'viewsize)); keep these at top of code so that they are calculated when the command is executed
  (setq viewc (getvar 'viewctr))
  
  (setq viewc-wcs (trans viewc 1 0)) ;translates viewc to world if not already
  (setq new-viewc (trans viewc-wcs 0 1)) ;tranlates the world to new UCS
  (command "PLAN" "")
  (command "ZOOM" "C" new-viewc viewsize)
  (princ "\nView rotated and restored")
  (princ)
)