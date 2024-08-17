#lang racket/base

(require gregor)

(current-timezone "Asia/Tokyo")

(define (honkidasu today-date)
  (let ([tomorrow (+days today-date 1)])
      (format "~aから本気だす" (~t tomorrow "MM/dd"))))

(module+ test
  (require rackunit)
  )

(module+ test
  (check-equal? (honkidasu (date 2024 7 17)) "07/18から本気だす")
  (check-equal? (honkidasu (date 2024 7 29)) "07/30から本気だす")
  (check-equal? (honkidasu (date 2024 7 31)) "08/01から本気だす")
  )

(module+ main
  (displayln (honkidasu (today))))
