# if we want to see the application name wise
dtrace -n 'profile-97/execname == "node" && arg1/{@[jstack(150, 8000)] = count(); } tick-60s { exit(0); }' > stacks.out

# if we want to see the pid wise
dtrace -n 'profile-97/pid == 771 && arg1/{@[jstack(150, 8000)] = count(); } tick-60s { exit(0); }' > stacks.out
