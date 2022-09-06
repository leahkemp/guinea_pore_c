#!/bin/bash

# initial script to test out higlass
# https://github.com/higlass/higlass-docker
# I ran on a server I had sudo on (so could therefore use docker) - voldemort on ESR's research network
# I haven't figured out yet how to run on HPC (ESR's prod network) with singularity (where I don't have sudo and don't have ability to poke holes and create ports)
# apologies to the coding gods for hard coding etc.

# invert my chromosome track data
# this was grabbed from the output of the snakemake pore-c pipeline
# https://github.com/nanoporetech/Pore-C-Snakemake
tac ~/guinea_pore_c/hg-data/Cavpor3.0.rg.chromsizes > ~/guinea_pore_c/hg-data/Cavpor3.0.rg.chromsizes_inverted

# grab lastest container
sudo docker pull higlass/higlass-docker

# setup containers
sudo docker run \
--detach \
--publish 8888:80 \
--volume ~/guinea_pore_c/hg-data:/data \
--volume ~/guinea_pore_c/hg-tmp:/tmp \
--name higlass-container \
higlass/higlass-docker

# ingest my mcool data
sudo docker exec \
higlass-container \
python \
higlass-server/manage.py \
ingest_tileset \
--project-name NlaIII_run01_Cavpor3.0_unphased \
--filename /data/NlaIII_run01_Cavpor3.0_unphased.matrix.mcool \
--filetype cooler \
--datatype matrix

# ingest my chromosome track
sudo docker exec higlass-container \
python \
higlass-server/manage.py \
ingest_tileset \
--project-name NlaIII_run01_Cavpor3.0_unphased \
--filename /data/Cavpor3.0.rg.chromsizes \
--filetype chromsizes-tsv \
--datatype chromsizes

# ingest my inverted chromosome track
sudo docker exec higlass-container \
python \
higlass-server/manage.py \
ingest_tileset \
--project-name NlaIII_run01_Cavpor3.0_unphased \
--filename /data/Cavpor3.0.rg.chromsizes_inverted \
--filetype chromsizes-tsv \
--datatype chromsizes
