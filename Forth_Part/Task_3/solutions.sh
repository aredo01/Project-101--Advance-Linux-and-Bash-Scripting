grep Invalid user auth.log | cut -d " " -f8 | sort | uniq
grep Invalid user auth.log | cut -d " " -f8 | sort | uniq -c