// Copyright (c) 2014 Osamu Hirose
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include"util.h"

double *** calloc3d (const int L, const int M, const int N){
  int l;
  double ***        a    = calloc   (L, sizeof(double**));
  for (l=0;l<L;l++) a[l] = calloc2d (M, N);
  return a;
}

void prepare_sortbox(sortbox *sb, const double * array, const int size){
  int i; for(i=0;i<size;i++){sb[i].val=array[i];sb[i].idx=i;}
  return; 
}

int cmp_sortbox(const void *a, const void *b){
  const sortbox *sa = (const sortbox*) a; 
  const sortbox *sb = (const sortbox*) b; 
  return sa->val>sb->val ? 1 : sa->val<sb->val ? -1 : 0;
}


double ** calloc2d (const int M, const int N){
  int m;
  double **         a    = calloc (M, sizeof(double*));
  for (m=0;m<M;m++) a[m] = calloc (N, sizeof(double ));
  return a;
}

int    ** calloc2i (const int M, const int N){
  int m;
  int **            a    = calloc (M, sizeof(int *));
  for (m=0;m<M;m++) a[m] = calloc (N, sizeof(int  ));
  return a;
}

