#include <bits/stdc++.h>
using namespace std;
// Osp_16_46 
    int input[1000005];
    bool primes [1000005];
    int n,maxval(0);
 
    void sieve(int x){
        if (primes[x]){
            for (int i= (2*x); i<=maxval+2; i+=x){
                primes[i]=false;
            }
        }
    }
 
int main(){
 
    memset (primes, true, sizeof primes);
    cin>>n;
 
    bool valid=false; //untuk cek ada inputan bernilai 2 atau tidak
 
    ///INPUT
    for (int i=0;i<n;i++){
        cin>>input[i];
        if (input[i]==2){valid=true;}
        if (maxval<input[i]){maxval=input[i];}
    }
 
    if (!valid){ //Karna tidak mungkin ada twin prime jika tidak ada '2'
        cout<<"TIDAK ADA"<<endl;
        return 0;
    }
 
 
 
    //aktifkan SIEVE OF ERATOSTHENES
    for (int i=2;i<=maxval;i++){
        sieve(i);
 
    }
 
 
 
    //Cek jika ada (P1 + 2), (P2 + 2), (P3 + 2), ..., (PN + 2) yang prima
    for (int i=0;i<n;i++){
        if (input[i]!=2){
            int twinp=input[i]+2;
            if (primes[twinp]){cout<<"ADA"<<endl; return 0;}
        }
    }
 
    cout<<"TIDAK ADA"<<endl;
 
 
 
return 0;
}
