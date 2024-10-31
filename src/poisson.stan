
data {
    int<lower=0> N;
    array[N] int<lower=0> y;
}

parameters {
    real<lower=0> lambda;
}

model {
    lambda ~ gamma(14, 4);
    y ~ poisson(lambda);
}
