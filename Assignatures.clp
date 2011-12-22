;Carreguem la ontologia
(load "Assignatures.pont")
(load-instances "Assignatures.pins")

(defmodule MAIN 
    (export ?ALL) 
)

;template de les dades d'usuari
(deftemplate alumne-actual 
    (slot nom)
    (slot nom-usuari)
)

;facts inicials
(deffacts usuari-actual 
 (alumne-actual 
    (nom desconegut)
    (nom-usuari desconegut)
  )
)


(deffunction pregunta (?pregunta)
    (format t "%s " ?pregunta)
    (bind ?resposta (readline))
    ?resposta
)

;(deffunction pregunta-conjunto (?pregunta $?valors)
;    (progn$ (?var ?valors) (lowcase ?var))
;    (format t "%s (%s) " ?pregunta (implode$ ?valors))
;    (bind ?resp (read))
;    (while (not (and (symbolp ?resp) (member (lowcase ?resp) ?valors))) do
;        (format t "%s (%s) " ?pregunta (implode$ ?valors))
;        (bind ?resp (read))
;    )
;    ?resp
;)


(defrule presentacio "Regla inicial de presentacio"
	(declare (salience 20))
	=>
	(printout t crlf)
	(printout t "+------------------------------------------------+" crlf)
	(printout t "|                                                |" crlf)
	(printout t "|            A S S I G N A T U R E S             |" crlf)
	(printout t "|                                                |" crlf)
	(printout t "+------------------------------------------------+" crlf)
	(focus obtener-datos-usuario)
)


;llavors el fem servir al agafar les dades:
(defmodule obtener-datos-usuario "modulo para realizar las preguntas al usuario o seleccionar uno ya existente"
    (import MAIN ?ALL)
    (export ?ALL)
)
;pregunta del nom d'usuari
(defrule demana-nom 
  ?u <- (alumne-actual (nom desconegut))
  =>
  (bind ?nom (pregunta "Com et dius?"))
  (modify ?u (nom ?nom))
)
(defrule demana-nom-usuari 
  ?u <- (alumne-actual (nom-usuari desconegut))
  =>
  (bind ?nomUsuari (pregunta "Necessitem el teu nom d'usuari de la fib. (exemple: john.doe)"))
  (modify ?u (nom-usuari ?nomUsuari))
)
