# docker_build_latex
Use docker container to compile latex

# Change to your project
cd my_project

# Download the command wrapper and make it executable
wget https://raw.githubusercontent.com/ipa-rwu/docker_build_latex/add_docker/latex_command.sh
chmod +x latex_command.sh

# Compile using pdflatex (docker will pull the image automatically)
./latex_command.sh pdflatex root.tex

# Or make multiple passes (does not start container twice)
../latex_command.sh /bin/sh -c "pdflatex main.tex && pdflatex main.tex"
