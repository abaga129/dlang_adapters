module adapter.matrix;

struct Matrix (T)
{
  T[][] mat;
  int m;
  int n;
  
  this(int m, int n)
  {
    this.m = m;
    this.n = n;
    
    mat.length = m;
    for(int i = 0; i < m; ++i)
    {
      mat[i].length = n;
    }
  }
  
  Matrix multiply(Matrix A)
  {
  }
  
  @property Matrix inverse()
  {
    
  }
  
  @property T[][] elem()
  {
    return &mat;
  }
}

Matrix multiply(Matrix LHS, Matrix RHS)
{
  assert(LHS.m == RHS.n);
  
}

Matrix inverse(Matrix 
