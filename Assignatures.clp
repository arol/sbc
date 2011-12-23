Carreguem la ontologia
;(load "Assignatures.pont")
; Tue Dec 20 11:39:56 CET 2011
; 
;+ (version "3.4.7")
;+ (build "Build 620")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot tema
		(type INSTANCE)
;+		(allowed-classes Tema)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-tema
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultat-acceptable
		(type SYMBOL)
		(allowed-values alta mitja baixa)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot assignatura
		(type INSTANCE)
;+		(allowed-classes Assignatura)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot convocatories
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(create-accessor read-write))
	(single-slot expedient
		(type INSTANCE)
;+		(allowed-classes Expedient)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipus
		(type SYMBOL)
		(allowed-values obligatoria optativa ale)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxim-hores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot quadrimestre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot afins
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(single-slot horari
		(type SYMBOL)
		(allowed-values mati tarda mati-tarda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sigles
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot qualificacio
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot num-matriculats
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-usuari
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-alumne
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxim-assignatures
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot temes
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write))
	(single-slot projecte
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-laboratori
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-dedicacio
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxim-hores-lab
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horari-convocatoria
		(type SYMBOL)
		(allowed-values mati tarda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot perfil
		(type INSTANCE)
;+		(allowed-classes Perfil)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero-convocatoria
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisits
		(type INSTANCE)
;+		(allowed-classes Assignatura)
		(create-accessor read-write))
	(single-slot curs
		(type INTEGER)
		(range 1 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-teoria
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-perfil
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentatge-aprovats
		(type INTEGER)
		(range 0 100)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Assignatura
	(is-a USER)
	(role concrete)
	(single-slot tema
		(type INSTANCE)
;+		(allowed-classes Tema)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipus
		(type SYMBOL)
		(allowed-values obligatoria optativa ale)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisits
		(type INSTANCE)
;+		(allowed-classes Assignatura)
		(create-accessor read-write))
	(single-slot curs
		(type INTEGER)
		(range 1 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot projecte
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horari
		(type SYMBOL)
		(allowed-values mati tarda mati-tarda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot sigles
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-laboratori
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-teoria
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot percentatge-aprovats
		(type INTEGER)
		(range 0 100)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot hores-dedicacio
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot num-matriculats
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Expedient
	(is-a USER)
	(role concrete)
	(multislot convocatories
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(create-accessor read-write)))

(defclass Convocatoria
	(is-a USER)
	(role concrete)
	(single-slot horari-convocatoria
		(type SYMBOL)
		(allowed-values mati tarda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot qualificacio
		(type FLOAT)
		(range 0.0 10.0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numero-convocatoria
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot quadrimestre
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot assignatura
		(type INSTANCE)
;+		(allowed-classes Assignatura)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Alumne
	(is-a USER)
	(role concrete)
	(single-slot maxim-hores-lab
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot perfil
		(type INSTANCE)
;+		(allowed-classes Perfil)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-usuari
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot expedient
		(type INSTANCE)
;+		(allowed-classes Expedient)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultat-acceptable
		(type SYMBOL)
		(allowed-values alta mitja baixa)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nom-alumne
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxim-assignatures
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot maxim-hores
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot temes
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write)))

(defclass Tema
	(is-a USER)
	(role abstract)
	(single-slot nom-tema
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass General
	(is-a Tema)
	(role concrete))

(defclass Especialitzat
	(is-a Tema)
	(role concrete)
	(multislot afins
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write)))

(defclass No-informatics
	(is-a Tema)
	(role concrete))

(defclass Perfil
	(is-a USER)
	(role concrete)
	(single-slot nom-perfil
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot temes
		(type INSTANCE)
;+		(allowed-classes Tema)
		(create-accessor read-write)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;		INSTANCIES		;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;(load-instances "Assignatures.pins")

; Tue Dec 20 11:39:56 CET 2011
; 
;+ (version "3.4.7")
;+ (build "Build 620")
(definstances instancies
	
([MAIN::Assignatures_Class0] of  Especialitzat

	(afins
		[MAIN::Assignatures_Class4]
		[MAIN::Assignatures_Class1])
	(nom-tema "Bases de Dades"))

([MAIN::Assignatures_Class1] of  General

	(nom-tema "Enginyeria del Software"))

([MAIN::Assignatures_Class10] of  Especialitzat

	(afins [MAIN::Assignatures_Class1])
	(nom-tema "Intel·ligencia Artificial"))

([MAIN::Assignatures_Class10004] of  Perfil

	(nom-perfil "Representacio grafica")
	(temes
		[MAIN::Assignatures_Class10005]
		[MAIN::Assignatures_Class4]
		[MAIN::Assignatures_Class5]
		[MAIN::Assignatures_Class3]))

([MAIN::Assignatures_Class10005] of  General

	(nom-tema "Visualitzacio"))

([MAIN::Assignatures_Class10006] of  Especialitzat

	(afins
		[MAIN::Assignatures_Class1]
		[MAIN::Assignatures_Class2]
		[MAIN::Assignatures_Class0])
	(nom-tema "Sistemes Informacio"))

([MAIN::Assignatures_Class10007] of  Perfil

	(nom-perfil "Gestio empresarial")
	(temes
		[MAIN::Assignatures_Class1]
		[MAIN::Assignatures_Class10006]
		[MAIN::Assignatures_Class2]
		[MAIN::Assignatures_Class7]))

([MAIN::Assignatures_Class10008] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10017])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2006-1")
	(qualificacio 4.5))

([MAIN::Assignatures_Class10011] of  Alumne

	(expedient [MAIN::Assignatures_Class10032])
	(nom-alumne "Arol Vinolas")
	(nom-usuari "harold.vinolas"))

([MAIN::Assignatures_Class10012] of  Assignatura

	(curs 4)
	(horari tarda)
	(hores-dedicacio "140")
	(hores-laboratori 28)
	(hores-teoria 42)
	(nom "Visualitzacio Avancada")
	(num-matriculats 100)
	(percentatge-aprovats 85)
	(prerequisits [MAIN::Assignatures_Class10015])
	(sigles "VA")
	(tema [MAIN::Assignatures_Class3])
	(tipus optativa))

([MAIN::Assignatures_Class10013] of  General

	(nom-tema "Arquitectura"))

([MAIN::Assignatures_Class10014] of  Especialitzat

	(afins [MAIN::Assignatures_Class10013])
	(nom-tema "Eficiencia"))

([MAIN::Assignatures_Class10015] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "143")
	(hores-laboratori 34)
	(hores-teoria 42)
	(nom "Visualitzacio i Interaccio Grafica")
	(num-matriculats 350)
	(percentatge-aprovats 70)
	(sigles "VIG")
	(tema [MAIN::Assignatures_Class10005])
	(tipus obligatoria))

([MAIN::Assignatures_Class10016] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "150")
	(hores-laboratori 0)
	(hores-teoria 45)
	(nom "Economia")
	(num-matriculats 250)
	(percentatge-aprovats 90)
	(sigles "Empresa i Entorn Economic")
	(tema [MAIN::Assignatures_Class2])
	(tipus obligatoria))

([MAIN::Assignatures_Class10017] of  Assignatura

	(curs 2)
	(horari mati-tarda)
	(hores-dedicacio "140")
	(hores-laboratori 0)
	(hores-teoria 70)
	(nom "Introduccio a la logica")
	(num-matriculats 100)
	(percentatge-aprovats 65)
	(sigles "IL")
	(tema [MAIN::Assignatures_Class10018])
	(tipus obligatoria))

([MAIN::Assignatures_Class10018] of  General

	(nom-tema "Logica"))

([MAIN::Assignatures_Class10019] of  Assignatura

	(curs 5)
	(horari mati-tarda)
	(hores-dedicacio "176")
	(hores-laboratori 14)
	(hores-teoria 38)
	(nom "Inteligencia Artificial")
	(num-matriculats 250)
	(percentatge-aprovats 80)
	(prerequisits [MAIN::Assignatures_Class10017])
	(sigles "IA")
	(tema [MAIN::Assignatures_Class10])
	(tipus obligatoria))

([MAIN::Assignatures_Class10020] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "172")
	(hores-laboratori 24)
	(hores-teoria 20)
	(nom "Bases de Dades")
	(num-matriculats 200)
	(percentatge-aprovats 90)
	(sigles "BD")
	(tema [MAIN::Assignatures_Class0])
	(tipus obligatoria))

([MAIN::Assignatures_Class10021] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "173")
	(hores-laboratori 0)
	(hores-teoria 28)
	(nom "Enginyeria del Software II")
	(num-matriculats 300)
	(percentatge-aprovats 85)
	(prerequisits [MAIN::Assignatures_Class10020])
	(sigles "ES2")
	(tema [MAIN::Assignatures_Class1])
	(tipus obligatoria))

([MAIN::Assignatures_Class10022] of  Assignatura

	(curs 4)
	(horari mati-tarda)
	(hores-dedicacio "150")
	(hores-laboratori 57)
	(hores-teoria 14)
	(nom "Projecte Enginyeria del Software i Bases de Dades")
	(num-matriculats 200)
	(percentatge-aprovats 90)
	(prerequisits
		[MAIN::Assignatures_Class10020]
		[MAIN::Assignatures_Class10021])
	(projecte TRUE)
	(sigles "PESBD")
	(tema [MAIN::Assignatures_Class1])
	(tipus obligatoria))

([MAIN::Assignatures_Class10023] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10017])
	(horari-convocatoria mati)
	(numero-convocatoria 2)
	(quadrimestre "2006-2")
	(qualificacio 5.2))

([MAIN::Assignatures_Class10024] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10016])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2007-2")
	(qualificacio 7.0))

([MAIN::Assignatures_Class10025] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10020])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2007-1")
	(qualificacio 5.6))

([MAIN::Assignatures_Class10026] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10021])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2008-2")
	(qualificacio 7.5))

([MAIN::Assignatures_Class10027] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10022])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2009-1")
	(qualificacio 10.0))

([MAIN::Assignatures_Class10028] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10015])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2009-1")
	(qualificacio 3.0))

([MAIN::Assignatures_Class10029] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10015])
	(horari-convocatoria tarda)
	(numero-convocatoria 2)
	(quadrimestre "2009-2")
	(qualificacio 6.0))

([MAIN::Assignatures_Class10030] of  Convocatoria

	(assignatura [MAIN::Assignatures_Class10012])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2010-1")
	(qualificacio 0.0))

([MAIN::Assignatures_Class10032] of  Expedient

	(convocatories
		[MAIN::Assignatures_Class10008]
		[MAIN::Assignatures_Class10023]
		[MAIN::Assignatures_Class10025]
		[MAIN::Assignatures_Class10024]
		[MAIN::Assignatures_Class10026]
		[MAIN::Assignatures_Class10027]
		[MAIN::Assignatures_Class10028]
		[MAIN::Assignatures_Class10029]
		[MAIN::Assignatures_Class10030]))

([MAIN::Assignatures_Class10033] of  Perfil

	(nom-perfil "Enginyeria del Software")
	(temes
		[MAIN::Assignatures_Class10006]
		[MAIN::Assignatures_Class1]))

([MAIN::Assignatures_Class11] of  Especialitzat

	(afins [MAIN::Assignatures_Class10])
	(nom-tema "LISP"))

([MAIN::Assignatures_Class2] of  No-informatics

	(nom-tema "Empresa"))

([MAIN::Assignatures_Class3] of  Especialitzat

	(afins
		[MAIN::Assignatures_Class4]
		[MAIN::Assignatures_Class10005])
	(nom-tema "Realitat Augmentada"))

([MAIN::Assignatures_Class4] of  General

	(nom-tema "Matematiques"))

([MAIN::Assignatures_Class5] of  General

	(nom-tema "Fisica"))

([MAIN::Assignatures_Class7] of  No-informatics

	(nom-tema "Lideratge"))

([MAIN::Assignatures_Class8] of  No-informatics

	(nom-tema "Ludic"))

([MAIN::Assignatures_Class9] of  Especialitzat

	(nom-tema "Android"))


)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;		MODULS		;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



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
)

;facts inicials
(deffacts usuari-actual 
 (alumne-actual 
    (nom desconegut)
    (nom-usuari desconegut)
    (num-assigs desconegut)
    (maxim-dedicacio desconegut)
    (maxim-laboratori desconegut)
    (tipus-horari desconegut)
    (temes desconegut)
    (perfil desconegut)
    (dificultat-acceptable desconegut)
  )
)


(deffunction pregunta (?pregunta)
    (format t "%s " ?pregunta)
    (bind ?resposta (readline))
    ?resposta
)

(deffunction pregunta-conjunto (?pregunta $?valors)
    ;per cada valor a valors
    (bind $?valorsLow (create$))
    (progn$ 
      (?var ?valors) 
      (bind $?valorsLow (insert$ $?valorsLow 1 (str-cat (lowcase ?var) "")))
    )
    ;escrivim per pantalla
    (format t "%s (%s) " ?pregunta (implode$ $?valorsLow))
    ;llegim de l'entrada
    (bind ?resp (readline))
    (format t "%s " ?resp)
    ;mentre no tinguem resposta
    (while (not (member (str-cat (lowcase ?resp) "") $?valorsLow )) do
        (format t "%s (%s) " ?pregunta (implode$ $?valorsLow))
        (bind ?resp (readline))
    )

    ?resp
)
(deffunction pregunta-multi-conjunto (?pregunta $?valors)
    ;per cada valor a valors
	(bind $?valorsLow (create$))
    (progn$ 
		(?var ?valors) 
		(bind $?valorsLow (insert$ $?valorsLow 1 (lowcase ?var)))
	)
    ;escrivim per pantalla
    (format t "%s " ?pregunta)
    ;llegim de l'entrada
	(bind $?temes (create$))
	
	(bind ?resp (readline))

	(printout t (member$  (str-cat (lowcase ?resp) "") $?valorsLow) crlf)

	(if (member$ (str-cat (lowcase ?resp) "")  $?valorsLow) then
		(printout t "holaaaaa" crlf)
		(bind $?temes (insert$ $?temes 1 ?resp))
	)
    ;mentre no tinguem resposta
	;mentre no se'ns indigui el final
	(while (not (eq (str-compare ?resp "fi") 0)) do
        (format t "%s " ?pregunta )
        (bind ?resp (readline))
		(printout t (lowcase ?resp) crlf)
		(if (member$ (str-cat (lowcase ?resp) "")  $?valorsLow) then
			(bind $?temes (insert$ $?temes 1 ?resp))
		)
    )

	$?temes
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
(defrule demana-nom-usuari 
  (declare (salience 19))
  ?u <- (alumne-actual (nom-usuari desconegut))
  =>
  (bind ?nomUsuari (pregunta "Necessitem el teu nom d'usuari de la fib. (exemple: john.doe)"))
  (modify ?u (nom-usuari ?nomUsuari))
)
(defrule demana-preferencies 
  (declare (salience 10))
  =>
  (bind ?resposta (pregunta-conjunto "Vols escollir preferencies?" si no))
  (if (eq (str-compare ?resposta si) 0) then
    (assert (preferencies si))
  )
  (if (eq (str-compare ?resposta no) 0) then
    (focus borrar-assignatures)
  )
)
(defrule demana-num-assigs 
  (preferencies si)
  ?u <- (alumne-actual (num-assigs desconegut))
  =>
  (bind ?MaxNumAssigs (pregunta "Digues el número maxim d'assignatures de les que et vols matricular?"))
  (modify ?u (num-assigs ?MaxNumAssigs))
)
(defrule demana-max-dedicacio 
  (preferencies si)
  ?u <- (alumne-actual (maxim-dedicacio desconegut))
  =>
  (bind ?maxHores (pregunta "Quantes hores li vols dedicar a la uni? (setmanals)"))
  (modify ?u (maxim-dedicacio ?maxHores))
)
(defrule demana-max-laboratori 
  (preferencies si)
  ?u <- (alumne-actual (maxim-laboratori desconegut))
  =>
  (bind ?maxHoresLabo (pregunta "Quantes hores de laboratori li vols dedicar a la uni (setmanals)?"))
  (modify ?u (maxim-laboratori ?maxHoresLabo))
)
(defrule demana-tipus-horari
  (preferencies si)
  ?u <- (alumne-actual (tipus-horari desconegut))
  =>
  (bind ?horari (pregunta-conjunto "Quan vols assistir a clase?" mati tarda))
  (modify ?u (tipus-horari ?horari))
)
(defrule demana-temes
  (preferencies si)
  ?u <- (alumne-actual (temes desconegut))
  =>
  (bind $?temes (create$))
  (do-for-all-instances 
     ((?tema Tema))
     TRUE
     (format t "- %s" ?tema:nom-tema)
     (bind $?temes (insert$ $?temes 1 ?tema:nom-tema))
	 (printout t "" crlf)
  )
  (bind $?temes (pregunta-multi-conjunto "Quins temes t'interesen" $?temes))
  (printout t $?temes crlf)
	(modify ?u (temes $?temes))
)
(defrule demana-perfil-interesat
  (preferencies si)
  ?u <- (alumne-actual (perfil desconegut))
  =>
  (bind $?perfils (create$))
  (do-for-all-instances 
     ((?perfil Perfil))
     TRUE
     (format t "- %s" ?perfil:nom-perfil)
     (bind $?perfils (insert$ $?perfils 1 ?perfil:nom-perfil))
	 (printout t "" crlf)
  )
  (bind ?perfil (pregunta-conjunto "En quin perfil et vols especialitzar?" $?perfils))
  (printout t ?perfils crlf)
	(modify ?u (perfil ?perfil))
)
(defrule demana-dificultat-maxima
  (preferencies si)
  ?u <- (alumne-actual (dificultat-acceptable desconegut))
  =>
  (bind ?dificultat (pregunta-conjunto "Quina sera la dificultat maxima de les teves assignatures" facil mitjana dificil))
  (modify ?u (dificultat-acceptable ?dificultat))
)

;llavors el fem servir al agafar les dades:
(defmodule borrar-assignatures "modul que pregunta les dades a l'usuari"
    (import MAIN ?ALL)
    (export ?ALL)
)

(defrule agafar-convocatories
	(alumne-actual (nom-usuari ?nomUsuari))
	?alumne <- (object (is-a Alumne)(nom-usuari ?nomUsuari))
	=>
		(printout t "" crlf)
		(printout t "Molt be, ")
		(printout t ?alumne crlf)
		(printout t (send ?alumne get-nom-alumne) )
		(printout t ". Anem per feina!" crlf)
		
		(bind ?expedient (send ?alumne get-expedient))
		(printout t ?expedient crlf )
		(bind $?convocatories (send ?expedient get-convocatories))
		(bind $?nomAssignaturesCursades (create$))
		(progn$ 
			(?convocatoria ?convocatories)
			(bind $?nomAssignaturesCursades 
				(insert$ $?nomAssignaturesCursades 1 (send (send ?convocatoria get-assignatura) get-nom) ))
		)
		(assert (convocatoriesLlistades true))
	)

(defrule eliminar-assignatures-cursades 
  	(convocatoriesLlistades)
	=>
	;(printout t $?convocatories crlf )
	;(bind ?MaxNumAssigs (pregunta "asodasjdajsdl"))
	(progn$ 
		(?convocatoria ?convocatories) 
		(if (>= (send ?convocatoria get-qualificacio) 5)
	
  )

(defrule eliminar-assignatures-sense-prerequisit-complert
    (convocatoriesLlistades true)
	?assignatura <- (object (is-a Assignatura))
    =>
    ($?prerequisits create$)
    (bind $?prerequisits (send ?assignatura get-prerequisits))
    
)
