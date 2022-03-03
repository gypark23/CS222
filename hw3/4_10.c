int main()
{
    int array[6];
    int sum = 0;
    for(int i = 0; i < 6; i++)
    {
        sum += array[i];
    }

int sum1;
int sum2;
int sum3;
int sum4;
int sum5;
int sum6;

    sum1 = array[0] + array[1];
    sum2 = array[2] + array[3];
    sum3 = array[4] + array[5];
    sum4 = array[6] + array[7];
    sum5 = sum1 + sum2; //1st level partial sums   
    sum6 = sum3 + sum4; 
    sum = sum5 + sum6;  //2nd level sums

    }