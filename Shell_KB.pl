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


% The following rules match actions to particular story responses and thus begin with "story". The first part is the action code and the second part is the story response. 
% Remember that your action codes can never begin with an uppercase letter because of limitations of the Prolog language itself. 
% Action codes can be more than letter-number combinations- it could be entire sentences if you prefer- but keep in mind that the user must type action codes exactly as written for the program to work. 


story(a1,
' 
This would be a part of the story with more actions to choose from. \n 
Actions: \n 
b1. Go to part b1. 
').

story(b1, 
'
From this point, you should be seeing the pattern. The possibilities are limitless. 
'). 
