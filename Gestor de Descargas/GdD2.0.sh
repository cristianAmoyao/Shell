#!/bin/bash
clear 
mkdir "Descargas de GdD"
cd "Descargas de GdD"
mkdir Isos "Libros y manuales" Imagenes Videos Musica 
echo "__Gestor de descargas_"
echo "______GPL 2.0_________"
echo  " Nota:se creara una carpeta "
echo  "para mejor organizacion"
read -p "Link De descarga:" desc
echo "wget -c $desc" >>  descargar.sh
echo "¿Desea agregar más?"
echo "1.Si"
echo "2.No" 
echo "3.limpiar historial"
echo "4.ver historial"
read opcion 
case $opcion in 
1)sh GdD.sh;;
2)sh descargar.sh;wait 3 ;rm descargar.sh;mv *.iso /Isos;mv *.pdf*.mobi *.pcr *.azw *.azw3 *.tpz *.fb2 *.epub *.epub3 *.dtb *.cba *.cbr *.cbz *.opf *.chm *.djvu *.ibook *.lit*.irf *.irx *.pml *.doc  *.docx *.docx *.rtf *.txt "/Libros y manuales";mv *.669 *.aif *.aifc *.aiff *.amf *.asf *.au *.audiocd *.cda *.cddafar *.it *.itz lwv *.mid *.midi *.miz *.mp1 *.mp2 *.mp3 *.mtm *.ogg *.ogm *.okt *.ra *.rmi *.snd *.stm *.stz *.ult *.voc *.wav *.wax *.wm *.wma *.wmv *.xm *.xmz *.au *.aac /Musica; mv  *.asf *.avi *.bik  *.div  *.divx *.dvd *.3ggp *.3gp *.ivf  *.m1v *.mov *.movie *.mp2v *.mp4  *.mpa  *.mpe  *.mpeg *.mpg  *.mpv2 *.qt  *.qtl *.rpm *.smk *.wm *.wmv *.wob /Videos;mv *.ais *.bmp *.bw *.cdr *.cdt *.cgm *.cmx *.cpt *.dcx *.dib *.emf *.gbr *.gif *.gih *.ico *.iff *.ilbm *.jfif *.jif *.jpe *.jpeg *.jpg *.kdc  *.pat *.pcd *.pct *.pict *.pcx *.pic *.pict *.pict *.png *.pntg *.pix *.psd  *.psp *.qti *.qtif *.rgb *.rgba *.rif *.rle *.sgi *.tga *.tif *.tiff *.wmf *.xcf *.bmp *.jpeg *.jpe *.jpg *.gif /Imagenes ;;
3)rm descargar.sh;;mv *.iso /Isos;mv *.pdf*.mobi *.pcr *.azw *.azw3 *.tpz *.fb2 *.epub *.epub3 *.dtb *.cba *.cbr *.cbz *.opf *.chm *.djvu *.ibook *.lit*.irf *.irx *.pml *.doc  *.docx *.docx *.rtf *.txt "/Libros y manuales";mv *.669 *.aif *.aifc *.aiff *.amf *.asf *.au *.audiocd *.cda *.cddafar *.it *.itz lwv *.mid *.midi *.miz *.mp1 *.mp2 *.mp3 *.mtm *.ogg *.ogm *.okt *.ra *.rmi *.snd *.stm *.stz *.ult *.voc *.wav *.wax *.wm *.wma *.wmv *.xm *.xmz *.au *.aac /Musica; mv  *.asf *.avi *.bik  *.div  *.divx *.dvd *.3ggp *.3gp *.ivf  *.m1v *.mov *.movie *.mp2v *.mp4  *.mpa  *.mpe  *.mpeg *.mpg  *.mpv2 *.qt  *.qtl *.rpm *.smk *.wm *.wmv *.wob /Videos;mv *.ais *.bmp *.bw *.cdr *.cdt *.cgm *.cmx *.cpt *.dcx *.dib *.emf *.gbr *.gif *.gih *.ico *.iff *.ilbm *.jfif *.jif *.jpe *.jpeg *.jpg *.kdc  *.pat *.pcd *.pct *.pict *.pcx *.pic *.pict *.pict *.png *.pntg *.pix *.psd  *.psp *.qti *.qtif *.rgb *.rgba *.rif *.rle *.sgi *.tga *.tif *.tiff *.wmf *.xcf *.bmp *.jpeg *.jpe *.jpg *.gif /Imagenes ;;
4)cat descargar.sh;;
esac
