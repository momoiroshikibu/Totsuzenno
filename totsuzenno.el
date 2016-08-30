(defun totsuzenno (word)
  (interactive "s突然の？: ")
  (let* ((middle-inner (format "　%s　" word))
         (middle-inner-length (length middle-inner))
         (up-inner (apply 'concat (make-list middle-inner-length "人")))
         (down-inner (apply 'concat (make-list middle-inner-length "Y^"))))
    (message "
＿%s＿
＞%s＜
￣%s￣
" up-inner middle-inner down-inner middle-inner-length)
    ))
