(defun totsuzenno (word)
  "
＿人人人人人＿
＞　突然の　＜
￣Y^Y^Y^Y^Y^￣
"

  (interactive "s突然の？: ")

  (defun string-repeat (s times)
    (defun iter (str s times)
      (if (= 0 times)
          str
        (iter (concat str s) s (1- times))))
    (iter "" s times))

  (let* ((middle-inner (format "　%s　" word))
         (middle-inner-length (length middle-inner))
         (up-inner (string-repeat "人" middle-inner-length))
         (down-inner (string-repeat "Y^" middle-inner-length))
         (output (format "
＿%s＿
＞%s＜
￣%s￣
" up-inner middle-inner down-inner)))
    (message output)
    (kill-new output)))
