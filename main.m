function [mae,rmse] = main()

[A,n,m] = initialize();
[C,R_bar,I] = reputation(A,n,m);
[sim,T] = similarity(A,R_bar,n,m);
[U,V] = algorithm(I,C,A,T,sim,n,m);
mae=MAE(U,V,A,n,m);
rmse=RMSE(U,V,A,n,m);

end