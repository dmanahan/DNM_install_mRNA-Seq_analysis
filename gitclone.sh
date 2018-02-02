git clone https://github.com/dmanahan/sra-tools.git
cd sra-tools/
./configure
make

wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.7.zip
unzip -vf fastqc_v0.11.7.zip

curl -fsSL https://github.com/FelixKrueger/TrimGalore/archive/0.4.3.tar.gz -o trim_galore.tar.gz
tar xvzf trim_galore.tar.gz

wget https://github.com/alexdobin/STAR/archive/2.5.3a.tar.gz
tar -xzf 2.5.3a.tar.gz

git clone https://github.com/samtools/samtools.git
cd samtools
make

wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
~/miniconda3/bin/conda install -c bioconda cutadapt
