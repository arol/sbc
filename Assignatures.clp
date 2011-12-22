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
    (slot num-assigs)
    (slot maxim-dedicacio)
    (slot maxim-laboratori)
    (slot tipus-horari)
    (multislot temes)
    (slot perfil)
    (slot dificultat-acceptable)
    (slot usuari)
)

;facts inicials
(deffacts usuari-actual 
 (alumne-actual 
    (nom desconegut)
    (nom-usuari desconegut)
    (num-assigs desconegut)
    (maxim-dedicacio desconegut)
    (tipus-horari desconegut)
    (temes desconegut)
    (perfil desconegut)
    (dificultat-acceptable desconegut)
    (usuari desconegut)
  )
)


(deffunction pregunta (?pregunta)
    (format t "%s " ?pregunta)
    (bind ?resposta (readline))
    ?resposta
)

(deffunction pregunta-conjunto (?pregunta $?valors)
    ;per cada valor a valors
    (progn$ (?var ?valors) (lowcase ?var))
    ;escrivim per pantalla
    (format t "%s (%s) " ?pregunta (implode$ ?valors))
    ;llegim de l'entrada
    (bind ?resp (read))
    ;mentre no tinguem resposta
    (while (not (and (symbolp ?resp) (member (lowcase ?resp) ?valors))) do
        (format t "%s (%s) " ?pregunta (implode$ ?valors))
        (bind ?resp (read))
    )

    ?resp
)
(deffunction pregunta-multi-conjunto (?pregunta $?valors)
    ;per cada valor a valors
    (progn$ (?var ?valors) (lowcase ?var))
    ;escrivim per pantalla
    (format t "%s (%s) " ?pregunta (implode$ ?valors))
    ;llegim de l'entrada
    (bind ?resp (read))
    ;mentre no tinguem resposta
    (while (not (and (symbolp ?resp) (member (lowcase ?resp) fi))) do
        (format t "%s (%s) " ?pregunta (implode$ ?valors))
        (bind ?resp (read))
    )

    ?resp
)


(defrule presentacio "Regla inicial de presentacio"
	(declare (salience 20))
	=>
	(printout t crlf)
	(printout t "+------------------------------------------------+" crlf)
	(printout t "|                                                |" crlf)
	(printout t "|            A S S I G N A T U R E S             |" crlf)
	(printout t "|                                                |" crlf)
	(printout t "+------------------------------------------------+" crlf)
	(focus obtenir-dades-usuari)
)


;llavors el fem servir al agafar les dades:
(defmodule obtenir-dades-usuari "modul que pregunta les dades a l'usuari"
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
(defrule demana-num-assigs 
  ?u <- (alumne-actual (num-assigs desconegut))
  =>
  (bind ?MaxNumAssigs (pregunta "Digues el número maxim d'assignatures de les que et vols matricular?"))
  (modify ?u (num-assigs ?MaxNumAssigs))
)
(defrule demana-max-dedicacio 
  ?u <- (alumne-actual (maxim-dedicacio desconegut))
  =>
  (bind ?maxHores (pregunta "Quantes hores li vols dedicar a la uni? (setmanals)"))
  (modify ?u (maxim-dedicacio ?maxHores))
)
(defrule demana-max-laboratori 
  ?u <- (alumne-actual (maxim-laboratori desconegut))
  =>
  (bind ?maxHoresLabo (pregunta "Quantes hores de laboratori li vols dedicar a la uni (setmanals)?"))
  (modify ?u (maxim-laboratori ?maxHoresLabo))
)
(defrule demana-tipus-horari
  ?u <- (alumne-actual (tipus-horari desconegut))
  =>
  (bind ?horari (pregunta-conjunto "Quan vols assistir a clase?" mati tarda))
  (modify ?u (tipus-horari ?horari))
)
(defrule demana-temes
  ?u <- (alumne-actual (temes desconegut))
  =>
  do-for-all-instances (
    (Tema ?tema) 
    (format t "%s" ?tema)
  )
  (bind ?temes (pregunta-multi-conjunto "Quins temes t'interesen" ))
  (modify ?u (tipus-horari ?temes))
)
