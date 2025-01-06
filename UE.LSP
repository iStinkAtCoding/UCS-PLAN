; Author: Richard Mehall
; Date: 1/2/25
; Description: this lisp routine was create to combine UCS creation and the PLAN Command without zooming out to the extents of the dwg.
; it restores the orginal view when the lisp is executed

(defun c:UE()
  (setq viewsize (getvar 'viewsize)); keep these at top of code so that they are calculated when the command is executed
  (setq viewc (getvar 'viewctr))
  (setq name (getstring "\nEnter name of UCS to save: "))
  
  (if (tblsearch "UCS" name)
    (progn
      (princ "\nThe UCS name already exists.")
      (initget "Yes No")
      (setq response (getkword "\nDo you want to overwrite it? [Yes/No]: "))
      (if (= response "Yes")
        (progn
          (command "UCS" "D" name)
        )
        (progn
          (princ "\nOperation cancelled. Select new name.")
          (exit)
        )
      )
    )
  )
  
  (setq viewc-wcs (trans viewc 1 0)) ;translates viewc to world if not already
  
  (command "UCS" "3" pause pause pause) ;pause waits for user input
  (command "UCS" "save" name)
  (setq new-viewc (trans viewc-wcs 0 1)) ;tranlates the world to new UCS
  (command "PLAN" "")
  (command "ZOOM" "C" new-viewc viewsize)
  (princ "\nUCS created succesfully")
  (princ)
)
