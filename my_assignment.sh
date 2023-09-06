mkdir my_working_directory
mkdir backups
mkdir src
cd my_working_directory/src
touch file1.txt
touch file2.txt
touch file3.txt
touch file4.txt
touch file5.txt
working_dir="my_working_directory"
backup_dir="$working_dir/backups"
src_dir="$working_dir/src"
backup_prefix="backup_$(date +'%Y%m%d_%H%M%S')"
mkdir -p "$backup_dir"
tar_filename="$backup_dir/$backup_prefix.tar"
tar -cf "$tar_filename" -C "$working_dir" src
ls -t "$backup_dir"/*.tar | tail -n +4 | xargs rm
echo "Backup created: $tar_filename"
