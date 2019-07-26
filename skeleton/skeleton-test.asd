#|
  This file is a part of <% @var name %>.
  (c) 2019 <% @var author %> 
  Author: <% @var author %> <% @if email %> (<% @var email %>)<% @endif %>
|#

(asdf:defsystem <% @var name %>-test
  :name "<% @var name %>-test"
  :version "1.0.0"
  :author "<% @var author %> <% @if email %> (<% @var email %>)<% @endif %>"
  :license "<% @var license %>"
  :description "Test system for <% @var name %>"
  :depends-on (:<% @var name %>
               :parachute)
  :components ((:file "<% @var name %>-test"))
  :perform (asdf:test-op (op c) (uiop:symbol-call :parachute :test
                                                  :<% @var name %>-test)))
