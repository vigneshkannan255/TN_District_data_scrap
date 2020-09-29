input="tn_district"
touch data.txt
while IFS= read -r line
do
  echo "---------------------------------------------------------------------">>data.txt
  echo "$line" >> data.txt
  #curl -k "https://$line.nic.in" | html2text | egrep "Thiru.|Tmt." >> data.txt 
  curl -k "https://$line.nic.in" | html2text | egrep "Thiru.|Tmt.|RevenueDivisions|Taluks|RevenueDivisions|Panchayat Villages|Local BodiesMunicipalities|Town Panchayats|ConstituenciesAssembly|Lok Sabha|Area|Total|Population" >> data.txt
done < "$input"
