%%% Local Variables: 
%%% coding: utf-8
%%% mode: latex
%%% TeX-engine: xetex
%%% End: 

%%% Эта штука выше нужна для емакса и auctex,
%%% хотя я ещё auctex не особо пользовался

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bsuir-std}[2024/09/02 Class conforming to BSUIR standard]


\LoadClass[a4paper,14pt,emptystyle]{article}

% Почему раньше был использован класс eskdx?
% Главным образом потом что он позволяет
% - Делать секции по ГОСТ 2.105-95
% - Писать спецификацию
% - Не подгружать пакет geometry, отступы уже в соответсвии с приложением Л СТП 

% Чтобы сделать отступы по СТП-2024 приложение Л
\RequirePackage{geometry}

% Добавляем polyglossia, с ним же добавиться fontspec и можем
% использовать шрифт Times New Roman в XeLaTeX
% При том одним только fontspec не обойтись, потому что в
% polyglossia ещё команда setdefaultlanguage, которая позволяет
% установить русский язык в качестве основного, без чего
% не будут нормально в русском переносы работать.
\RequirePackage{polyglossia}

% Чтобы более гибко настроить межстрочный интервал в списках и перечислениях
\RequirePackage{enumitem} % https://tex.stackexchange.com/a/519982

% Картинки^W Иллюстрации
\RequirePackage{graphicx}
% Подписи к картинкам.
\RequirePackage{caption}

\RequirePackage{amsmath}
\RequirePackage{unicode-math}

\RequirePackage{iftex} 

% Я использую XeLaTeX потому что это позволяет использовать системный
% Times New Roman
\ifXeTeX
  %% устанавливает главный язык документа
  \setdefaultlanguage[spelling=modern]{russian}
  %% устанавливает второй язык документа
  \setotherlanguage{english}

  % СТП-2017 пункт 2.1.1
  % Устанавливаем основным шрифтом системный Times new Roman
  \setmainfont{Times New Roman}
  \newfontfamily{\cyrillicfont}{Times New Roman}
  \newfontfamily{\cyrillicfontsf}{Times New Roman}
 % Выставляем в качестве моноширинного шрифта системный Courier
  \setmonofont{Courier New}
  \newfontfamily{\cyrillicfonttt}{Courier New}

  \providecommand{\No}{\textnumero}

  %% Убираем предупреждение о использовании команды \cyr из eskdx
  \RequirePackage{xecyr} 

%  \setmathfont{Cambria Math}

  % интервал между строк
  % В СТП-2017 не оговорен, просто сказано в пункте 2.1.1
  % В СТП-2024 интервал уже оговорен и составляет 18 пунктов
  % 40 +- 3 строки на страницу
  \RequirePackage{setspace}
  \setstretch{1}
\fi

