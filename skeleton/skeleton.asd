#|
  This file is a part of <% @var name %>.
  (c) 2019 <% @var author %> 
  Author: <% @var author %> <% @if email %> (<% @var email %>)<% @endif %>
|#

(asdf:defsystem <% @var name %>
  :version "0.0.1"
  :author "<% @var author %>"
  :license "<% @var license %>"
  :serial t
  :depends-on (<% (format t "~{\"~(~A~)\"~^~%               ~}"
                          (getf env :depends-on)) %>)
  :components ((:file "<% @var name %>"))
  :description "<% @var description %>"
  <%- @unless without-tests %>
  :in-order-to ((test-op (test-op "<% @var name %>-test")))
  <%- @endunless %>)
