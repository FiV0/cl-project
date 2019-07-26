(defpackage <% @var name %>-test
  (:use :cl
        :<% @var name %>
        :parachute)
  (:shadow #:run)
  (:export <% @var name %>-test))
(in-package :<% @var name %>-test)

;; NOTE: To run this test file, execute `(asdf:test-system :<% @var name %>)' in your Lisp.

(define-test text-target-1 
  (is-values (values 0 "1")
    (= 0)
    (equal "1")))
