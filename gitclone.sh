#Download and install sra-tools
git clone https://github.com/dmanahan/sra-tools.git
cd sra-tools/
./configure
make
cd ..

#Download and install FastQC
wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip
unzip -vf fastqc_v0.11.7.zip

#Download TrimGalore!
curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/0.4.3.tar.gz -o trim_galore.tar.gz
tar xvzf trim_galore.tar.gz

#Download STAR
wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz
tar -xzf 2.5.3a.tar.gz

#Download samtools
git clone https://github.com/samtools/samtools.git
cd samtools
make
cd ..

#Download pip
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py --user
mv ~/.local/bin/* .

#Download HTSeq using pip
./pip install HTSeq --user
mv ~/.local/bin/* .

#Download Miniconda and Cutadapt.  Cutadapt is a dependency of TrimGalore! and requires Miniconda to install
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod 775 Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh
#Miniconda asks "Do you accept the license terms? [yes|no]" and "Miniconda3 will now be installed into this location: ~/miniconda3" and "Press ENTER to confirm the location"
#chmod 775 -R ~/miniconda3/
mv ~/miniconda3/ .

~/miniconda3/bin/conda install -c bioconda cutadapt
#Cutadapt asks "Proceed ([y]/n)?"
