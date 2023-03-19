## Understanding the Infection Dynamics of COVID-19 through a SuEIR Model and Deep Learning

This repository contains work for the UBC 2022W Math 561 group project done by Matt and Chloe. 

The project aims to understand the infection dynamics of COVID-19 through the proposed SuEIR Model proposed by [Zou et al. 2020.](https://www.medrxiv.org/content/10.1101/2020.05.24.20111989v1) We will create simulations with minor perturbations to examine the bias of the estimated parameter values of the proposed model. The majority of the code will be implemented in Python, with the exception that the traditional ODE being implemented in MATLAB. 

Model parameters include $\beta$ that denotes the contact rate between the susceptible and “infected” groups (including both exposed and infectious compartments), $\sigma$ which denotes the ratio of cases in the exposed compartments that are either confirmed as infectious or dead/recovered without confirmation, $\mu$ the discovery rate of the infected cases, and $\gamma$ which denotes the transition rate between the $I$ and $R$ compartments.

### Objectives:
* Understand and examine the COVID-19 SuEIR Model
* Compare traditional ODE solver in MATLAB and artificial neural network ODE numerical solvers ([Chen et al. 2018](https://arxiv.org/abs/1806.07366)) in Python to obtain the $\hat{S}_t, \hat{E}_t, \hat{I}_t,\hat{R}_t$ values
* Using the estimated data from the last step and the simulated 'ground truth', learn the model parameters by minimizing the logarithmic-type mean square error objective function proposed in the paper. 
* Calculate whether the real $R_0$ can still be recovered from the simulations. $R_0=\frac{\beta}{\sigma}+\frac{\beta \mu}{\gamma}$ is is derived from the Next Generation Matrix which is also illustrated in the paper. 



[Course Website](https://personal.math.ubc.ca/~coombs/math561.html)
