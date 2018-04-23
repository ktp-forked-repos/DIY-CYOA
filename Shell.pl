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


 % Allows for accents in non-English languages. Not necessary if program will not be using a language containing accents or special characters.
 :- set_prolog_flag(encoding, iso_latin_1). 
 
% The knowledge bases are stored on different files to avoid cluttering the program's main code. A different knowledge base exists for every language supported. 
% The knowledge bases contain the story text while this file contains the rules for running the program only.


% If desired, the knowledge place could also be placed in this same file without importing. 
% Importing the knowledge base
:- consult('Shell_KB.pl').

% The main method that runs when the program is started. It displays a chosen welcome message on the screen. 
start:-
    write('This is the start screen that appears when the program is started. You could put a short description of the story or rules for how to use the program. You should also instruct the user to type "begin." (or the name you choose for your read-call loop method) so that it can be initialized.
	').
:- start. 

% This method creates a read-call loop that all the rest of the rules of the program will be run in. Without this, every action would return "true" after the appropriate response.
 
begin :-
	write('
	This is a convenient place to provide an introduction to the story. This will likely be the first screen that users will see action options to choose from. Example: \n
Actions: \n
a1. Go to part a1.  \n
a2. Go to part a2. \n 
a3. Go to part a3. \n 
Users select an action by typing:
actioncode. 
such as a1. for example. Be careful because the code must have the full stop and not begin with a capital letter. \n
Notice that in the knowledge base code, an "\\n" is written that does not appear in the final view for the reader. This creates line breaks. However, Prolog can detect the whitespace in your story code without using \\n as well. 
\r You can create \'tab\' or carriage return effects by using "\\r". Like with linebreaks, Prolog can detect whitespace here, too. \n
\r If you want a formatting code to appear in the user\'s view (for example, for a \\n or a \\t to be outputted), simply add an additional \\ before the formatting code. \n 
	'), 
    repeat,
    read(Input),
    story(Input, Output),
	write(Output), nl, nl, % nl creates a new line and is helpful for aesthetics.
    fail.
