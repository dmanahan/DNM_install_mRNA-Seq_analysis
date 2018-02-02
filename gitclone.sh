git clone https://github.com/dmanahan/sra-tools.git
cd sra-tools/
./configure
make

wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip
unzip -vf fastqc_v0.11.7.zip

git clone https://github.com/dmanahan/TrimGalore.git

git clone https://github.com/dmanahan/cutadapt.git

wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz
tar -xzf 2.5.3a.tar.gz

git clone https://github.com/dmanahan/htslib.git
