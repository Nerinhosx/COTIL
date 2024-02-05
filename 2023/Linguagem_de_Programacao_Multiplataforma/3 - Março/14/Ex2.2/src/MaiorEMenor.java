public class MaiorEMenor {

    public static int MaiorDe2(int a, int b)
    {
        if(a>b)
            return a;
        else
            return b;
    }

    public static int MaiorDe3(int a, int b, int c)
    {
        if(a>b)
        {
            if(a>c)
            {
                return a;
            }
            else
                return c;
        }
        else
            return b;
    }

    public static int MaiorDe4(int a, int b, int c, int d)
    {
        if(a>b)
        {
            if(a>c)
            {
                if(a>d)
                {
                    return a;
                }
                else
                    return d;
            }
            else if (c>d)
            {
                return c;
            }
            else
                return d;
        }
        else if (b>c)
        {
            if(b>d)
            {
                return b;
            }
            else
                return d;
        }
        else if (c>d)
        {
            return c;
        }
        else return d;
    }

    public static int MaiorDe5(int a, int b, int c, int d, int e)
    {
        if(a>b)
        {
            if(a>c)
            {
                if(a>d)
                {
                    if(a>e)
                        return a;
                }
                else if (d>e)
                {
                    return d;
                }
                else
                    return e;
            }
            else if (c>d)
            {
                if(c>e)
                    return c;
                else
                    return e;
            }
            else if (d>e)
            {
                return d;
            }
            else
                return e;
        }
        else if (b>c)
        {
            if(b>d)
            {
                if(b>e)
                    return b;
                else
                    return e;
            }
            else if (d>e)
            {
                return d;
            }
            else
                return e;
        }
        else if (c>d)
        {
            if(c>e)
                return c;
            else
                return e;
        }
        else if (d>e)
        {
            return d;
        }
        return e;
    }
}
