doFib(int n, int doPrint)
{
    int status;
    int out;
    pid_t id1;
    pid_t id2;
    int exit1 = 0;
    int exit2 = 0;

    if(n <= 1)
      exit(n);

    id1 = fork();

    if (id1 == 0)
    {
        // printf("Child 1! %d  ",n);
        doFib(n-1, 0);
        exit(n);
    }

    id2 = fork();

    if (id2 == 0)
    {
        // printf("Child 2! %d  ", n);
        doFib(n-2, doPrint);
        exit(n);
    }

    while ((id1 = waitpid(-1, &status, 0)) > 0)
    {
        if(WIFEXITED(status))
            exit1 = WEXITSTATUS(status);
    }

    while ((id2 = waitpid(-1, &status, 0)) > 0)
    {
        if(WIFEXITED(status))
            exit2 = WEXITSTATUS(status);
    }

    out = exit1 + exit2;

    printf("Gets here!\n");
    if(doPrint)
        printf("%d\n", out);
    else
        exit(out);

}