% \iffalse meta-comment
%
% Copyright (C) 2005 Claire M. Connelly and the 
% Department of Mathematics, Harvey Mudd College
% 
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 2 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
% USA
%
% Contact: Claire M. Connelly <cmc@math.hmc.edu>
%          Department of Mathematics
%          Harvey Mudd College
%          1250 N Dartmouth Ave
%          Claremont, CA 91711
%          (909) 621-8754
% 
% \fi
%%
%% LaTeX class file for typesetting colloquium announcement flyers.
%%
%% $Id$
%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{colloqflyer}[2001/05/25 LaTeX class for typesetting colloquium flyers]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax %%% Change if we add options.
\LoadClass[12pt,oneside]{article}

%% Get some useful information about errors.
\setcounter{errorcontextlines}{25}
 
\RequirePackage{url}
\RequirePackage{avant}
\renewcommand{\rmdefault}{pag}  % Use Avant Garde as the roman font.
\RequirePackage{graphicx}
\RequirePackage{xspace}
\RequirePackage{color}
\RequirePackage{ifthen}

%%% Tinker with margins and such -- this is a flyer, not a multipage
%%% document, after all.
\setlength{\headheight}{0pt}
\setlength{\headsep}{0pt}
\setlength{\footskip}{0pt}
\setlength{\textheight}{723pt}
\setlength{\topmargin}{-25pt}
\setlength{\parindent}{0pt}
%\setlength{\oddsidemargin}{-15pt}
%\setlength{\textwidth}{450pt}

%%% Define some useful commands.

\renewcommand{\pm}{\textsc{p.m.}\xspace}
\newcommand{\am}{\textsc{a.m.}\xspace}
\newcommand{\linesep}{\vspace{1em}\hrulefill\vspace{1em}}
\newcommand{\linefill}{\vfill{}\vspace{1em}\hrulefill\vspace{1em}\vfill{}}


%%% Define some additional informational fields.

\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}
\newcommand{\@abstract}{\@latex@warning@no@line{No \noexpand\colloqsite given}}
\newcommand{\colloqsite}[1]{\gdef\@colloqsite{#1}}
\newcommand{\@colloqsite}{\@latex@warning@no@line{No \noexpand\colloqsite given}}
\urldef{\@colloquiumwebsite}{\url}{\@colloqsite}
\newcommand{\speaker}[1]{\gdef\@speaker{#1}}
\newcommand{\@speaker}{\@latex@warning@no@line{No \noexpand\speaker given}}
\newcommand{\talktime}[1]{\gdef\@talktime{#1}}
\newcommand{\@talktime}{\@latex@warning@no@line{No
    \noexpand\talktime given}}
\newcommand{\talklocation}[1]{\gdef\@talklocation{#1}}
\newcommand{\@talklocation}{\@latex@warning@no@line{No
    \noexpand\talklocation given}}
\newcommand{\refreshmenttime}[1]{\gdef\@refreshmenttime{#1}}
\newcommand{\@refreshmenttime}{\@latex@warning@no@line{No
    \noexpand\refreshmenttime given}}
\newcommand{\refreshmentlocation}[1]{\gdef\@refreshmentlocation{#1}}
\newcommand{\@refreshmentlocation}{\@latex@warning@no@line{No
    \noexpand\refreshmentlocation given}}
\newcommand{\host}[1]{\gdef\@host{#1}}
\newcommand{\@host}{\@latex@warning@no@line{No \noexpand\host given}}
\newcommand{\hostphone}[1]{\gdef\@hostphone{#1}}
%\newcommand{\@hostphone}{\@latex@warning@no@line{No \noexpand\hostphone given}}
\newcommand{\hostemail}[1]{\gdef\@hostemail{#1}}
%\newcommand{\hostemail}[1]{\urldef\@hostemailurl\@hostemail{#1}}
\newcommand{\@hostemail}{\@latex@warning@no@line{No \noexpand\hostemail given}}





%%% Typeset the flyer itself.

\newcommand{\flyer}{%
\pagestyle{empty}


{\large \textbf{\textsc{Claremont Colleges}} }
\vspace{1.5em}

{\huge \textbf{M~A~T~H~E~M~A~T~I~C~S~~C~O~L~L~O~Q~U~I~U~M}}

\linesep

\begin{center}
\large\textbf{\textsc{\@title}}
\medskip

\@speaker{}

\end{center}
\linesep

{\large \textbf{\textsc{Abstract}}}

{
\setlength{\parindent}{1em}

\@abstract{}

}
\linefill

{\large \textbf{\textsc{Talk}}}

\@date{} at \@talktime{}, \@talklocation{}.
\medskip

Coffee and cookies at \@refreshmenttime{}---wine and cheese after the talk, 
\@refreshmentlocation{}.

\linefill

{\large \textbf{\textsc{Dinner}}}

Hosted by \@host{}.  If interested in attending,

\ifthenelse{\isundefined{\@hostphone}}%
  {\ifthenelse{\isundefined{\@hostemail}}%
    {or e-mail \@hostemail}%
    {e-mail \@hostemail}%
  }%
  {call \@hostphone{}%
    \ifthenelse{\isundefined{\@hostemail}}%
    {}%
    { or e-mail \@hostemail}}%
.

\linefill

{\large \textbf{\textsc{For More Information\ldots{}}}}

For Math Colloquium information, visit the website:\\
\@colloquiumwebsite

\linefill


\global\let\author\relax
\global\let\date\relax
\global\let\title\relax
\global\let\speaker\relax
\global\let\talktime\relax
\global\let\talklocation\relax
\global\let\refreshmenttime\relax
\global\let\refreshmentlocation\relax
\global\let\host\relax
\global\let\hostphone\relax
\global\let\hostemail\relax
\global\let\colloqsite\relax
\global\let\@author\relax
\global\let\@date\relax
\global\let\@title\relax
\global\let\@speaker\relax
\global\let\@talktime\relax
\global\let\@talklocation\relax
\global\let\@refreshmenttime\relax
\global\let\@refreshmentlocation\relax
\global\let\@host\relax
\global\let\@hostphone\relax
\global\let\@hostemail\relax
\global\let\@colloqsite\relax
\global\let\@colloquiumsite\relax

}                               % End of \flyer command.


\definecolor{grey}{gray}{.75}

% \DeclareRobustCommand{\@backgroundimage}{%
% \begin{minipage}{6in}
% \includegraphics[scale=4]{sphere_cmc}
% Let's add some text for debugging purposes.
% \end{minipage}
% }

% \newcommand{\ps@firstpage}{%
%    \renewcommand{\@oddhead}{{\@backgroundimage}}%
% }

%%% End of class definition.
\endinput
