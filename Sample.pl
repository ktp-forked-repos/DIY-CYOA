/*
	Author: Stephanie Price
	Version: 1.0.0
	
	This program is part of "Create Your Own CYOA". 
    "Create Your Own CYOA" is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

% Allows for accents in non-English languages
:- set_prolog_flag(encoding, iso_latin_1).


% Knowledge bases are stored on different files to avoid cluttering the program's main code. A different knowledge base exists for every language supported.
% This file contains the rules for all supported languages
% Importing the knowledge bases 
:- consult('KB_ENG.pl').
:- consult('KB_ITA.pl').
:- consult('KB_ESP.pl').


 
% The main method that runs when the program is started. It displays a chosen welcome message on the screen. 
start:-
    write('	To begin the English version, type:
	begin.
	and hit the enter key, exactly as seen, without any capital letters or spaces and with a period at the end. 
	
	Para comenzar la versión en español, escriba: 
	comenzar.
	y presionar la tecla "enter", exactamente así sin mayúsculas o espacios y con un punto. 
	
	Per iniziare la versione en italiano, scriva:
	iniziare.\t
	e premere il tasto Invio, esattamente così, senza lettere maiuscole e con un punto. 
	').
:- start. 

% Rule for the English language version. 

begin :-
	write('2018: At Stanford University, Hiro Nakauchi and Pablo Ross introduced human stem cells into sheep embryos to create the first-ever interspecies chimeras. The embryos were terminated at 28 days old. \n
 
2050: Researchers learn how to put human intelligence into birds- specifically, a raven.\n

Corvid\n
Hominid\n
Intelligence\n
Project\n

They call her Chip. \n

Action:\n
a0. Think.

[Hint: To perform an action, type the action code and press enter. For example:
a0. 
Make sure to type it exactly like that- with a full-stop (.), no uppercase letters, or spaces! 

If you make a typo at any point of playing, do the following:
1. Type . and nothing else and hit the enter key to reset the input system. You will receive an error in red text saying "Syntax Error" and this is supposed to happen!
2. Type begin. again and hit the enter key.
3. Type your most recent action code, (example: a0. ) and hit the enter key to return to your last position

To quit at any point, click the X in the right corner of the window.
---

Now, type a0. and press enter to continue the story! ] 

	'), nl, nl,
	repeat,
    read(Input),
	story(Input, Response),
	write(Response), nl, nl,
	fail.


% Rule for the Spanish language version.

comenzar :-
	write('
	2018: Al Stanford University, Hiro Nakuachi y Pablo Ross pusieron células madre humanas en embriones de ovejas para crear la primera quimera interespecies. Los embriones fueron terminados a los veintiocho días de edad.\n
2050: Los investigadores aprendieron cómo poner inteligencia humana en aves, específicamente, una cuerva.\n

Córvid\n
Humana\n
Inteligencia \n
Proyecto \n

Se llama Chip.
Accion:\n
a0. Piensas. 


[Sugerencia: para realizar una acción, escriba el código de acción y presionar la tecla "enter". Por ejemplo, 
a0. 
Asegúrese de escribirlo exactamente así, con un punto (.) completo, ¡sin letras mayúsculas, espacios, o acentos! 

Si comete un error tipográfico en cualquier punto de reproducción, simplemente hacer así:

1. Escriba . y nada más y presionar la tecla "enter" para restablecer el sistema de input. Recibirá un error en el texto rojo que dice "Error de sintaxis" y se supone que esto sucederá.
2. Escriba comenzar. de nuevo y presionar la tecla "enter".
3. Escriba su código de acción más reciente, (ejemplo: a0) y presionar la tecla "enter". para regresar a su último puesto

Para irse en cualquier momento, Haga clic en la X en la esquina superior derecha.
---

Ahora, escribe a0. y presiona enter para continuar la historia! ]
	'), nl, nl,
	repeat,
	read(Input),
	historia(Input, Response),
	write(Response), nl, nl,
	fail.

% Rule for the Italian language version.
	
iniziare :-
	write(' 
	2018: Alla Stanford University, Hiro Nakauchi e Pablo Ross hanno introdotto cellule staminali umane in embrioni di pecore per creare le prime chimere interspecie. Gli embrioni sono stati uccisi a 28 giorni di età. \n
2050: I ricercatori imparano come inserire l\'intelligenza umana negli uccelli, in particolare nel corvo. \n
Corvidae\n
Homo\n
Intelligenza\n
Progetto\n

Si chiama Chip. \n
Azione: \n
a0. Pensi. 
[Suggerimento: per eseguire un\'azione, scrive il codice di azione e premere il tasto Invio. Ad esempio, 
a0. 
Assicurati di scriverlo esattamente così- con un punto (.), senza lettere maiuscole, o spazi! 

Se si commette un errore di battitura in qualsiasi momento, semplicemente fare così:
1. Scrivere solamente un punto e niente più e premere il tasto Invio per ripristinare il sistema di input. Riceverai un errore nel testo rosso che dice "Errore di sintassi" e questo dovrebbe accadere!
2. Scrivere iniziare. di nuevo premere il tasto Invio.
3. Scrivere il codice di azione più recente, (esempio: a0.) premere il tasto Invio per tornare all\'ultima posizione

Per uscire in qualsiasi momento, fai clic sulla X nell\'angolo in alto a destra. 
---

Ora, digita a0. e premi invio per continuare la storia! ]
	'), nl, nl,
	repeat,
	read(Input),
	storia(Input, Response),
	write(Response), nl, nl,
	fail.
