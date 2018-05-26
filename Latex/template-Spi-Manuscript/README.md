# Template-Spi-Manuscript

Here is an unofficial manuscript template featuring the new **SPI** cover. A sample can be seen [here](./build/Main_Manuscrit.pdf).

## Organization

It is separated in 4 files:

- `Preambule.tex`: list of  required packages
- `Funct_TemplateECN.tex`: program for the implementation
- `Input_TemplateECN.tex`: program for adding information and complete the template with personal informations
- `Main Manuscrit.tex`: minimal working example

## Comments

Some particularity:
- be careful with the `picture` directory (you may need to change de directory if you change the files organisation). An example extracted from `Funct_TemplateECN.tex`:
```(tex)
pgfdeclareimage[width = 0.17paperwidth]{logocn}{../TemplateFiles/logocn-rvb} % Logo ECN-rvb
```
- 1 or 2 co-director names are possible (auto-modification of the title "Co-encadrants de These")
- 0, 1 or 2 invite names are possible (auto-modification of the title "Invité" or suppression if not used)
  Exemple of input line from `Input_TemplateECN.tex`:
```
MyTitle{"Titre de Thèse"}'
direcThese{Prénom Nom}{Fonction et établissement}
```
You will need simply to change the information.

It is a version under development, but normally it's working fine!
Some issues are possible if name/function of jury member, director, ... are too long (not enough space).
