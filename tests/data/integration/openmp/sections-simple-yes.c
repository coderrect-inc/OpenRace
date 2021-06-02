int main()
{
    int x = 0;

    #pragma omp parallel sections
    {
        #pragma omp section
        ++x;
        #pragma omp section
        --x;
    }

    return x;
}
