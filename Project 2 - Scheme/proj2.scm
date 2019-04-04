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
(define checklist
; TODO: Define function here

)

; ------------------------------------------------------------------------------

; Part D:
(define mergelist
; TODO: Define function here

)

