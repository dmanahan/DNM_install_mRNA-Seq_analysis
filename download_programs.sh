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