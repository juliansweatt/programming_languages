; Part A: Reverse a list
(define (reverselist lst)
    (define len (length lst))                               ;Save length of list
    (do ((i (- (length lst) 1) (- i 1)))                    ;Iterate backwards over the list
        ((< i 0) (list-tail lst len))                       ;Return the reversed half of the lis
        (set! lst (append lst (list (list-ref lst i)))))    ;Append the list to itself in reverse order
)

; ------------------------------------------------------------------------------
; Part B: Insert integer into sorted list
(define (insert newnum lst)
    (sort(append lst (list newnum)) <)                      ;Append to end of list, resort ascending list
)

; ------------------------------------------------------------------------------
; Part C: Check if an item a exists in list
(define (checklist target lst)
    (cond
        ((member target lst) #t)                            ;Check if target is a member of the list, return true if it is
        (else #f))                                          ;Return false if member is not found
)

; ------------------------------------------------------------------------------
; Part D:
(define (mergelist lst1 lst2)
    (sort (append lst1 lst2) <)                             ;Merge lists by appending & re-sort merged list
)
