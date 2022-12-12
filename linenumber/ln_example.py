import os
import sys
 
 
def fileline(frame=0):
    fr = sys._getframe(frame+1) # +1 to ignore this function call ...
    import ipdb; ipdb.set_trace()
    return (os.path.basename(fr.f_code.co_filename), fr.f_lineno)
 
class foo:
    def __init__(self, v):
        self._v = v
        self.declaration = fileline()
 
    @property
    def v(self):
        return self._v
 
    @v.setter
    def v(self, value):
        self._v = value
        self.lastassign = fileline(1)   # 1=file/line of the immediate caller of this function
 
x = foo(4)
 
x.v = 5
print(f"{x.lastassign}")
 
x.v = 6
print(f"{x.lastassign}")
