# LAB University of Applied Sciences thesis template

This is an unofficial LaTeX template for LAB University of Applied Sciences
thesis reports. It formats the document according to the formatting and
presentation guidelines for thesis reports version 170822. Some formatting
styles are not implemented.

## Basic usage

To avoid any potential licensing issues, the real university logo is not
included with this template. Replace the `logos/lab.png` file with the real
university logo before building the final document.

```tex
% Heading 1
\chapter{Chapter name}

% Heading 2
\section{Section name}

% Heading 3
\subsection{Subsection name}

% Heading 4, unnumbered
\subsubsection*{Subsubsection name}

% Bold text
\textbf{This text is bolded}

% Italics
\textit{This text is italics}

% Bullet list
\begin{itemize}
  \item First item
  \item Second item
\end{itemize}

% Numbered list
\begin{enumerate}
  \item First item
  \item Second item
\end{enumerate}

% Figure
\begin{figure}[H]
  \includegraphics*[width=\linewidth]{figures/figure.png}
  \caption{Figure caption}
  \label{fig:figure_label}
\end{figure}

% Table
\begin{table}[H]
  \includegraphics[width=\linewidth]{figures/table.png}
  \caption{Table caption}
  \label{fig:table_label}
\end{table}
```

## Citations

[Natbib][natbib] package commands should be used for citations and
[Cleveref][cleveref] for cross-referencing.

```tex
% In text citations
\citet{lamport84}

% Sentence citations
\citep{lamport84}

% Cross-reference a figure or a table, title case
\Cref{fig:label_name}

% Cross-reference a figure or a table, lowercase
\cref{fig:label_name}
```

For full paragraph citations, use the following command from the `labthesis`
class. It works just as `\citep` but it formats the output according the full
paragraph formatting guidelines.

```tex
% Full paragraph citations
\citepara[1]{lamport84}
```

## Abstract

The abstract texts should be written in `.txt` files insted of the `.tex` files.

## Font size

Font sizes are relative to the global font size of the document. The following
[table][fontsize] lists the font sizes in `pt` for different document font
sizes.

| Size          | 10pt  | 11pt  | 12pt  |
| ------------- | ----- | ----- | ----- |
| \tiny         | 5     | 6     | 6     |
| \scriptsize   | 7     | 8     | 8     |
| \footnotesize | 8     | 9     | 10    |
| \small        | 9     | 10    | 10.95 |
| \normalsize   | 10    | 10.95 | 12    |
| \large        | 12    | 12    | 14.4  |
| \Large        | 14.4  | 14.4  | 17.28 |
| \LARGE        | 17.28 | 17.28 | 20.74 |
| \huge         | 20.74 | 20.74 | 24.88 |
| \Huge         | 24.88 | 24.88 | 24.88 |

## Bibliography

For supported bibliography entry fields, see the `labthesis.bst` file.

### Management

`biber` command can be used to process the bibliography file, remove comments,
normalise formatting, and sort the file. After using the command and verifying
the output, the old file can be manually replaced.

```shell
biber --tool pages/references.bib --output-file pages/references.new.bib
```

### Style

If the bibliography style driver file is modified, a new bibliography style can
be generated with the following command. The style included with the template
has been modified after it was generated with the driver file to match the
university style specifications.

```shell
tex labthesis.dbj
```

## License

CC-BY-4.0

[cleveref]: https://www.ctan.org/pkg/cleveref
[fontsize]: https://latex-tutorial.com/changing-font-size/
[natbib]: https://www.ctan.org/pkg/natbib
