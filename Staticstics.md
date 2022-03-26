## Statistics

### Curve Fitting Tool 

### Table of Fits

- #### SSE 残差平方和

  ​	 $\sum_{i=1}^{n}{w_i}{(y_i-\hat{y})^2}$ = $e_i^2$   // wi 是系数

  ​	SS~res~ = $\sum_{i=1}^{n}{(y_i-\hat{y})^2} = e_i^2$

  ​	closer to zero indicates more useful

- #### **R-square($R^2$)(Coefficient of determination)** 

​	**决定系数**,判定系数，也称为拟合优度

​	拟合优度越大，==自变量对因变量的解释程度越高，自变量引起的变动占总变动的百分比高==。观察点在回归直线附近越密集。取值范围：0-1.

​	能够衡量回归拟合好坏程度的度量，而拟合程度不应受到数值离散性的影响，所以，我们通过“相除”的方式来克服这个影响。

​	在投资中，R平方通常被解释为==基金或证券的变动百分比==，可以用基准指数的变动来解释。例如，对于[固定收益证券](http://abcexchange.io/terms/f/fixed-incomesecurity.asp) 与债券指数相比，债券指数确定了基于指数价格变动可预测的证券价格变动比例。这同样适用于股票与标准普尔500指数或任何其他相关指数的比较。即**[决定系数](http://abcexchange.io/terms/c/coefficient-of-determination.asp) .**

​																	**$R_2 = 1-\frac{SS~res~}{SS~tot~}$**

![[公式]](https://www.zhihu.com/equation?tex=R%5E2+%3D+1+-+%5Cfrac%7B%5Csideset%7B%7D%7B_i%7D%5Csum+%28%5Chat%7By%7D_i-y_i%29%5E2%7D%7B%5Csideset%7B%7D%7B_i%7D%5Csum+%28%7By%7D_i-%5Cbar%7By%7D%29%5E2%7D)

> 回归平方和：**SSR(Sum of Squares for regression)** = **ESS (explained sum of squares)**   
>
> 残差平方和：**SSE（Sum of Squares for Error）** = **RSS(residual sum of squares)**
>
> 总离差平方和：**SST(Sum of Squares for total)** = **TSS(total sum of squares)**
>
> SS~res~ = $\sum_{i=1}^{n}{(y_i-\hat{y})^2} = e_i^2$
>
> SS~reg~ =  $\sum_{i=1}^{n}{(\hat{y}-\bar{y})^2}$
>
> SS~tot~ = $\sum_{i=1}^{n}{(y_i-\bar{y})^2}$
>
> **SSE+SSR=SST **
>
> **RSS+ESS=TSS**

- #### **Adj R-sq (R^2^ ~Adj~)**

​	$ R^2 adj= 1 - \frac{(1-R^2)(n-1)}{n-p-1}$

​	[adjusted DF](https://en.wikipedia.org/wiki/Coefficient_of_determination)

​		在模型中，增加多个变量，即使事实上无关的变量，也会小幅度条R平方的值，当时其是无意义，所有我们调整了下，降低R平方的值。

- #### **DFE**: the degree of freedom in the error

- #### **RMSE(均方根误差、标准差)**：Root mean squared error  

  - #### or **Root-mean-square deviation** (**RMSD**) 均方根偏差

 $RMSE = \sqrt{MSE} = \sqrt{\frac{SSE}{n}} = \sqrt{\frac{1}{n}\sum_{i=1}^{n} {(y_i-\bar{y_i})^2}}$

每个误差对 RMSD 的影响与平方误差的大小成正比；因此较大的误差对 RMSD 的影响非常大。因此，RMSD 对异常值很敏感。

> **MSE(均方差、方差)**：Mean squared error
>
> 数理统计中均方误差是指**参数估计值与参数值之差平方的==期望值==**，记为**MSE**。MSE是衡量**“平均误差”**的一种较方便的方法，**MSE可以评价数据的变化程度，MSE的值越小，说明预测模型描述实验数据具有更好的精确度。**预测数据和原始数据对应点误差平方和的均值
>
> **$MSE = \frac{SSE}{n}$**

- #### #Coeff(the number of coefficients)

  ​	look for the smallest  number of coefficients to avoid overfitting





### 特征缩放

