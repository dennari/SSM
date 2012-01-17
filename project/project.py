# Statistical signal modeling project work
from numpy import *
import matplotlib.pyplot as mpl

def main():
	p = 4
	N = 1024
	a = random.rand(p)
	d = zeros(N)
	b = 1

	# d(n)
	for k in arange(N):
		prev = zeros(p)
		for n in arange(p)+1:
			if k-n > 0:
				prev[n-1] = d[k-n]
		d[k] = -1*a.dot(prev)+b*random.randn()
	
	mpl.plot(arange(256),d[:256])
	
	# w(n)
	w = random.randn(N)

	# x
	x = d+w
	mpl.figure()
	mpl.plot(arange(256),x[:256])




	mpl.show()



if __name__ == '__main__':
	main()