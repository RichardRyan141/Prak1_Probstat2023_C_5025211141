# 1
n = 10
p = 0.488

# 1b
cat ("1b : ", dbinom(3, n, p), "\n")

# 1c
cat ("1c : ", sum(dbinom(0:2, n, p)), "\n")

# 1d
cat ("1d : ", sum(dbinom(3:10, n, p)), "\n")

# 1e
cat ("1e ekspektasi : ", n*p, "\n")
cat ("1e simpangan baku : ", sqrt(n*p*(1.0-p)), "\n")

#1f
plot(0:10, dbinom(0:10, n, p), type='h', main='Distribusi Bayi Laki-Laki', 
     xlab='Jumlah bayi laki-laki', ylab='Probabilitas')


# 2
lambda = 1.8

# 2b
cat("2b : ", dpois(4, lambda=lambda), "\n")

# 2c
cat("2c : ", sum(dpois(0:4, lambda=lambda)), "\n")

# 2d
cat("2d : ", 1.0-sum(dpois(0:4, lambda=lambda)), "\n")

# 2e
cat("2e ekspektasi : ", lambda, "\n")
cat("2e standar deviasi : ", sqrt(lambda), "\n")

# 2f
plot(0:10, dpois(0:10, lambda=lambda), type='h', 
     main='Distribusi Kematian oleh Kanker', 
     xlab='Jumlah kematian', ylab='Probabilitas')

# 2g
sim = rpois(100000, lambda=lambda)

# 2h
cat("2g mean : ", mean(sim), "\n")
cat("2g median : ", median(sim), "\n")
cat("2g varian : ", var(sim), "\n")
cat("2g standar deviasi : ", sd(sim), "\n")
cat("2g >4 kematian : ", sum(sim > 4), "\n")


# 3
v = 10

# 3a
cat("3a : ", dchisq(3,10), "\n")

# 3b
x <- rchisq(500, df = v)
hist(x, breaks=20, freq = FALSE, xlim = c(0,30), ylim = c(0,0.15))

curve(dchisq(x, df = v), from = 0, to = 29, 
      n = 500, col= 'red', lwd=2, add = T)

# 3c
cat("3c mean : ", 10, "\n")
cat("3c varian : ", 2*10, "\n")

# 4
n = 100
mean = 45
sd = 5

# 4a
sim = rnorm(n, mean, sd)
x1 = max(sim[sim < mean(sim)])
x2 = min(sim[sim > mean(sim)])
prob = pnorm(x2, mean=mean(sim), sd=sd) - pnorm(x1, mean=mean(sim), sd=sd(sim))
z1 = (x1-mean(sim))/sd(sim)
z2 = (x2-mean(sim))/sd(sim)
cat("4a probabilitas : ", prob, "\n")
cat("4a z1 : ", z1, "\n")
cat("4a z2 : ", z2, "\n")

x <- seq(-4, 4, length=n) * sd + mean
y <- dnorm(x, mean, sd)
plot(x,y, type = "l")

# 4b
hist(sim, breaks=50, prob=TRUE, xlab='x')

# 4c
cat("4c varian : ", var(sim), "\n")


# 5

# 5a
cat("5a : ", pt(q=-2.34, df=6), "\n")

# 5b
cat("5b : ", pt(q=1.34, df=6, lower.tail = FALSE), "\n")

# 5c
cat("5c : ", pt(q=-1.23, df=3) + pt(q=1.23, df=3, lower.tail = FALSE), "\n")

# 5d
cat("5d : ", pt(q=0.94, df=14) - pt(q=-0.94, df=14), "\n")

# 5e
cat("5e : ", qt(p=0.0333, df=5), "\n")

# 5f
cat("5f : ", qt(p=0.125, df=25, lower.tail = FALSE), "\n")

# 5g
cat("5g : ", qt(p=0.875, df=11), "\n")

# 5h
cat("5h : ", qt(p=0.98335, df=23), "\n")
