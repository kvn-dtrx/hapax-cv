\NeedsTeXFormat{LaTeX2e}

% ENIGMA Using \ProvidesExplClass instead of \ProvideClass leads to blank space
% swallowing in \ClassError.
% \ProvidesExplClass
% {hapax-cv}
% {2025/08/16}
% {v0.0-dev}
% {A LaTeX Class for CVs}

\ProvidesClass{hapax-cv}[%
    2025/08/16 v0.0-dev A LaTeX Class for CVs%
]

% ---

% Not strictly necessary … rather a warning.
% expl3 – Wrapper package for experimental LaTeX3.
\RequirePackage{expl3}

% ---

% Initialisation
\input{segments/_hpx-init.tex}

% - LuaLaTeX Engine check
% - Document information management (hpx/doc-info)
% - Class option parsing (hpx)

% ---

% Package Loading
\input{segments/_hpx-load.tex}

% - Required class and styles from TeXLive
% - Minor package customisations

% ---

% Page Style Preparations
\input{segments/_hpx-pagestyle.tex}

% ---

% Cover Letter Environment
\input{segments/_hpx-lttr-env.tex}

% - Provides (\begin|\end){hpxlttr}

% ---

% Actual CV Environment
\input{segments/_hpx-cv-env.tex}

% - Provides (\begin|\end){hpxcv}

% ---

% PDF Attachment Management
\input{segments/_hpx-attachments.tex}

% - Provides \AddPdfAttachment

% ---
