
(defun s-query (element path)
  "Accepts an s-expression that represents an xml element and a query
path. Returns the selected elements.

\(s-query '(a (b c 1 (d 1) (e 2))) '(b d))
=> ((D 1))
\(s-query '(a (b c 1 (d 1) (e 2))) '(b :c))
=> (1)
\(s-query '(a (b c 1 (d 1) (e 2))) '(b :c))
=> (1)
(s-query '(a (b c 1 (d 1) (e 2))) '(b *))
=> ((D 1) (E 2))
(s-query '(a (b c 1 (d 1) (e 2))) '(b (d e)))
=> ((D 1) (E 2))
(s-query '(a (b c 1 (d 1) (e 2))) '(b d ~))
=> (1)"
  (if path
      (let ((selector (car path)))
	(cond
	  ((keywordp selector)
	   (select-attribute element selector))
	  ((eq selector '~)
	   (last element))
	  ((or (symbolp selector)
	       (listp selector))
	   (remove nil
		   (loop
		      for element in (select-elements element selector)
		      append (s-query element (cdr path)))))
	  (t (error "Unkown Selectior: ~A" selector))))
      (list element)))

(defun select-attribute (element selector)
  "Selects an attribute from an element."
  (list
  (cadr
   (member (symbol-name selector)
	   (cdr element)
	   :key (lambda (item)
		  (when (symbolp item)
		    (symbol-name item)))
	   :test #'equalp))))

(defun select-elements (element selector)
  "Selects child elements from an element."
  (loop
     for i in element
     when (and (listp i)
	       (or (eq selector '*)
		   (when (listp selector)
		     (find (symbol-name (car i)) selector
			   :key #'symbol-name
			   :test #'equalp))
		   (when (and (symbolp selector)
			      (symbolp (car i)))
		     (equalp (symbol-name (car i))
			     (symbol-name selector)))))
     collect i))

