;Carreguem la ontologia
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
	
([Assignatures_Class0] of  Especialitzat

	(afins
		[Assignatures_Class4]
		[Assignatures_Class1])
	(nom-tema "Bases de Dades"))

([Assignatures_Class1] of  General

	(nom-tema "Enginyeria del Software"))

([Assignatures_Class10] of  Especialitzat

	(afins [Assignatures_Class1])
	(nom-tema "Intel·ligencia Artificial"))

([Assignatures_Class10004] of  Perfil

	(nom-perfil "Representacio grafica")
	(temes
		[Assignatures_Class10005]
		[Assignatures_Class4]
		[Assignatures_Class5]
		[Assignatures_Class3]))

([Assignatures_Class10005] of  General

	(nom-tema "Visualitzacio"))

([Assignatures_Class10006] of  Especialitzat

	(afins
		[Assignatures_Class1]
		[Assignatures_Class2]
		[Assignatures_Class0])
	(nom-tema "Sistemes Informacio"))

([Assignatures_Class10007] of  Perfil

	(nom-perfil "Gestio empresarial")
	(temes
		[Assignatures_Class1]
		[Assignatures_Class10006]
		[Assignatures_Class2]
		[Assignatures_Class7]))

([Assignatures_Class10008] of  Convocatoria

	(assignatura [Assignatures_Class10017])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2006-1")
	(qualificacio 4.5))

([Assignatures_Class10011] of  Alumne

	(expedient [Assignatures_Class10032])
	(nom-alumne "Arol Vinolas")
	(nom-usuari "harold.vinolas"))

([Assignatures_Class10012] of  Assignatura

	(curs 4)
	(horari tarda)
	(hores-dedicacio "140")
	(hores-laboratori 28)
	(hores-teoria 42)
	(nom "Visualitzacio Avancada")
	(num-matriculats 100)
	(percentatge-aprovats 85)
	(prerequisits [Assignatures_Class10015])
	(sigles "VA")
	(tema [Assignatures_Class3])
	(tipus optativa))

([Assignatures_Class10013] of  General

	(nom-tema "Arquitectura"))

([Assignatures_Class10014] of  Especialitzat

	(afins [Assignatures_Class10013])
	(nom-tema "Eficiencia"))

([Assignatures_Class10015] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "143")
	(hores-laboratori 34)
	(hores-teoria 42)
	(nom "Visualitzacio i Interaccio Grafica")
	(num-matriculats 350)
	(percentatge-aprovats 70)
	(sigles "VIG")
	(tema [Assignatures_Class10005])
	(tipus obligatoria))

([Assignatures_Class10016] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "150")
	(hores-laboratori 0)
	(hores-teoria 45)
	(nom "Economia")
	(num-matriculats 250)
	(percentatge-aprovats 90)
	(sigles "Empresa i Entorn Economic")
	(tema [Assignatures_Class2])
	(tipus obligatoria))

([Assignatures_Class10017] of  Assignatura

	(curs 2)
	(horari mati-tarda)
	(hores-dedicacio "140")
	(hores-laboratori 0)
	(hores-teoria 70)
	(nom "Introduccio a la logica")
	(num-matriculats 100)
	(percentatge-aprovats 65)
	(sigles "IL")
	(tema [Assignatures_Class10018])
	(tipus obligatoria))

([Assignatures_Class10018] of  General

	(nom-tema "Logica"))

([Assignatures_Class10019] of  Assignatura

	(curs 5)
	(horari mati-tarda)
	(hores-dedicacio "176")
	(hores-laboratori 14)
	(hores-teoria 38)
	(nom "Inteligencia Artificial")
	(num-matriculats 250)
	(percentatge-aprovats 80)
	(prerequisits [Assignatures_Class10017])
	(sigles "IA")
	(tema [Assignatures_Class10])
	(tipus obligatoria))

([Assignatures_Class10020] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "172")
	(hores-laboratori 24)
	(hores-teoria 20)
	(nom "Bases de Dades")
	(num-matriculats 200)
	(percentatge-aprovats 90)
	(sigles "BD")
	(tema [Assignatures_Class0])
	(tipus obligatoria))

([Assignatures_Class10021] of  Assignatura

	(curs 3)
	(horari mati-tarda)
	(hores-dedicacio "173")
	(hores-laboratori 0)
	(hores-teoria 28)
	(nom "Enginyeria del Software II")
	(num-matriculats 300)
	(percentatge-aprovats 85)
	(prerequisits [Assignatures_Class10020])
	(sigles "ES2")
	(tema [Assignatures_Class1])
	(tipus obligatoria))

([Assignatures_Class10022] of  Assignatura

	(curs 4)
	(horari mati-tarda)
	(hores-dedicacio "150")
	(hores-laboratori 57)
	(hores-teoria 14)
	(nom "Projecte Enginyeria del Software i Bases de Dades")
	(num-matriculats 200)
	(percentatge-aprovats 90)
	(prerequisits
		[Assignatures_Class10020]
		[Assignatures_Class10021])
	(projecte TRUE)
	(sigles "PESBD")
	(tema [Assignatures_Class1])
	(tipus obligatoria))

([Assignatures_Class10023] of  Convocatoria

	(assignatura [Assignatures_Class10017])
	(horari-convocatoria mati)
	(numero-convocatoria 2)
	(quadrimestre "2006-2")
	(qualificacio 5.2))

([Assignatures_Class10024] of  Convocatoria

	(assignatura [Assignatures_Class10016])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2007-2")
	(qualificacio 7.0))

([Assignatures_Class10025] of  Convocatoria

	(assignatura [Assignatures_Class10020])
	(horari-convocatoria mati)
	(numero-convocatoria 1)
	(quadrimestre "2007-1")
	(qualificacio 5.6))

([Assignatures_Class10026] of  Convocatoria

	(assignatura [Assignatures_Class10021])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2008-2")
	(qualificacio 7.5))

([Assignatures_Class10027] of  Convocatoria

	(assignatura [Assignatures_Class10022])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2009-1")
	(qualificacio 10.0))

([Assignatures_Class10028] of  Convocatoria

	(assignatura [Assignatures_Class10015])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2009-1")
	(qualificacio 3.0))

([Assignatures_Class10029] of  Convocatoria

	(assignatura [Assignatures_Class10015])
	(horari-convocatoria tarda)
	(numero-convocatoria 2)
	(quadrimestre "2009-2")
	(qualificacio 6.0))

([Assignatures_Class10030] of  Convocatoria

	(assignatura [Assignatures_Class10012])
	(horari-convocatoria tarda)
	(numero-convocatoria 1)
	(quadrimestre "2010-1")
	(qualificacio 0.0))

([Assignatures_Class10032] of  Expedient

	(convocatories
		[Assignatures_Class10008]
		[Assignatures_Class10023]
		[Assignatures_Class10025]
		[Assignatures_Class10024]
		[Assignatures_Class10026]
		[Assignatures_Class10027]
		[Assignatures_Class10028]
		[Assignatures_Class10029]
		[Assignatures_Class10030]))

([Assignatures_Class10033] of  Perfil

	(nom-perfil "Enginyeria del Software")
	(temes
		[Assignatures_Class10006]
		[Assignatures_Class1]))

([Assignatures_Class11] of  Especialitzat

	(afins [Assignatures_Class10])
	(nom-tema "LISP"))

([Assignatures_Class2] of  No-informatics

	(nom-tema "Empresa"))

([Assignatures_Class3] of  Especialitzat

	(afins
		[Assignatures_Class4]
		[Assignatures_Class10005])
	(nom-tema "Realitat Augmentada"))

([Assignatures_Class4] of  General

	(nom-tema "Matematiques"))

([Assignatures_Class5] of  General

	(nom-tema "Fisica"))

([Assignatures_Class7] of  No-informatics

	(nom-tema "Lideratge"))

([Assignatures_Class8] of  No-informatics

	(nom-tema "Ludic"))

([Assignatures_Class9] of  Especialitzat

	(nom-tema "Android"))


)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;		MODULS		;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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
;(defmodule modul-preguntes "Modul d'interaccio amb l'usuari per tal d'introduir les dades" 
;   (export ?ALL)
;)

(deffunction pregunta (?pregunta)
    (format t "%s " ?pregunta)
    (bind ?resposta (readline))
    ?resposta
)

(defrule presentacio "Regla inicial de presentacio"
	(declare (salience 20))
	=>
	(printout t crlf)
	(printout t "+------------------------------------------------+" crlf)
	(printout t "|                                                |" crlf)
	(printout t "|              A S S I G N A T U R E S           |" crlf)
	(printout t "|                                                |" crlf)
	(printout t "+------------------------------------------------+" crlf)
	(focus obtener-datos-usuario)
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
    (export ?ALL)
)

;pregunta del nom d'usuari
(defrule demana-nom 
  ?u <- (alumne-actual (nom desconegut))
    =>
  (bind ?nom (pregunta "Com et dius pute"))
  (modify ?u (nom ?nom))
)
