
# Customize compilation commands
$latex = 'latex -shell-escape %O $S';
$pdflatex = 'pdflatex -shell-escape %O %S';

# Set up what the previewer is and how to update it
$pdf_previewer = 'open -a Skim %R.pdf';
# $pdf_update_method = 4;
# $pdf_update_command = 'open -a Skim %R.pdf'

