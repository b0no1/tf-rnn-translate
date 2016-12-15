sed -i -e "s/config.gpu_options.per_process_gpu_memory_fraction = .*/config.gpu_options.per_process_gpu_memory_fraction = $3/"  translate.py
python translate.py --data_dir=$(pwd)/data --train_dir=$(pwd)/data --num_layers=$1 --size=$2
