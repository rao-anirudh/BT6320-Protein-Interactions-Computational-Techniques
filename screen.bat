@echo off

for %%f in (Candidate_Original_9*.pdbqt) do (
	echo "Processing %%~nf"
	mkdir "%%~nf"
	"C:\Program Files (x86)\The Scripps Research Institute\Vina\vina.exe" --config config.txt --ligand %%f --out %%~nf/out.pdbqt --log %%~nf/log.txt

)