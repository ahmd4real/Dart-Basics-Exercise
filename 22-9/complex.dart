class Complex{
  late int r;
  late double rl;

  Complex({int r=0,double rl=0.0}){
    this.r=r;
    this.rl=rl;
  }

  Complex sum(Complex x){
    Complex ans=Complex();
    ans.r=r+x.r;
    ans.rl=rl+x.rl;
    return ans;
  }

  
  Complex sub(Complex x){
    Complex ans=Complex();
    ans.r=r-x.r;
    ans.rl=rl-x.rl;
    return ans;
  }

  
  Complex mul(Complex x){
    Complex ans=Complex();
    ans.r=r*x.r;
    ans.rl=rl*x.rl;
    return ans;
  }

}