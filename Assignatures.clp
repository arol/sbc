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
;modul d'interaccio amb l'usuari
(defmodule modul-preguntes "Modul d'interaccio amb l'usuari per tal d'introduir les dades" 
    (export ?ALL)
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

;llavors el fem servir al agafar les dades:
(defmodule obtener-datos-usuario "modulo para realizar las preguntas al usuario o seleccionar uno ya existente"
    (import MAIN ?ALL)
    (import modul-preguntes ?ALL)
    (export ?ALL)
)

;pregunta del nom d'usuari
(defrule demana-nom 
  ?u <- (alumne-actual (nom desconegut))
    =>
  (bind ?nom (pregunta "Com et dius pute"))
  (modify ?u (nom ?nom))
)
