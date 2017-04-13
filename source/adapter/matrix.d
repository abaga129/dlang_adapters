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
  
  @property Matrix inverse()
  {
    
  }
  
  @property T[][] elem()
  {
    return &mat;
  }
}

/**
There are more efficient algorithms however much more difficult to
implement.

Complexity: O(n^3)
*/
@safe Matrix multiply (T) (Matrix!T LHS, Matrix!T RHS)
{
  assert(LHS.m == RHS.n);
  Matrix!T mat = Matrix!T(LHS.m, RHS.n);
  for(int i = 0; i < LHS.m; ++i){
    for(int j = 0; j < RHS.n; ++i){
      for(int k = 0; k < RHS.m; ++k){
        mat.elem[i, j] += LHS.elem(i, k) * RHS.elem(k,j);
      }
    }
    
    return mat;
  }
  
}
