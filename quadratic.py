import numpy as np
import chainer

class Quadratic(chainer.Link):
    def __init__(self):
        super(Quadratic, self).__init__(
            x=(1)
        )
        self.x.data = np.array([2], dtype = np.float32)

    def fwd(self):
        return ((self.x - 1) * (self.x - 1)) # y = (x-1)^2

model = Quadratic()
optimizer = chainer.optimizers.SGD(lr = 0.1)
optimizer.use_cleargrads()
optimizer.setup(model)

for i in range(80):
    model.cleargrads()
    y = model.fwd()
    y.backward()
    print("=== Epoch %d ===" % (i + 1))
    print("model.x.data = %f" % model.x.data)
    print("y.data = %f" % y.data)
    print("model.x.grad = %f" % model.x.grad)
    print()
    optimizer.update()
