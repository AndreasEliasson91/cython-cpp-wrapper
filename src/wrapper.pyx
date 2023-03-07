# distutils: language = c++
# distutils: sources = rectangle.cpp

from rectangle cimport Rectangle


cdef class PyRectangle:
    cdef Rectangle c_rect

    def __init__(self, int xmin, int ymin, int xmax, int ymax) -> None:
        self.c_rect= Rectangle(xmin, ymin, xmax, ymax)

    def get_area(self) -> int:
        return self.c_rect.getArea()

    def get_size(self) -> tuple:
        cdef int width, height
        self.c_rect.getSize(&width, &height)
        return width, height

    def move(self, dx, dy) -> None:
        self.c_rect.move(dx, dy)

    @property
    def xmin(self) -> int:
        return self.c_rect.xmin
    
    @xmin.setter
    def xmin(self, xmin: int) -> None:
        self.c_rect.xmin = xmin
    
    @property
    def ymin(self) -> int:
        return self.c_rect.ymin
    
    @ymin.setter
    def ymin(self, ymin: int) -> None:
        self.c_rect.ymin = ymin

    @property
    def xmax(self) -> int:
        return self.c_rect.xmax
    
    @xmax.setter
    def xmax(self, xmax: int) -> None:
        self.c_rect.xmax = xmax
    
    @property
    def ymax(self) -> int:
        return self.c_rect.ymax
    
    @ymax.setter
    def ymax(self, ymax: int) -> None:
        self.c_rect.ymax = ymax
    
#def main():
#    rect_ptr = new Rectangle(1, 2, 3, 4)  # Insantiate on the heap
#
#    try:
#        rect_area = rect_ptr.getArea()
#    finally:
#        del rect_ptr
#
#    cdef Rectangle rect_stack  # Instantiate on the stack
