cdef extern from 'rectangle.cpp':  # Include cpp-file
    pass


cdef extern from 'rectangle.h' namespace 'shapes':  # Include header-file
    cdef cppclass Rectangle:
        int xmin, ymin, xmax, ymax

        Rectangle() except +  # Raise Python exception instead of C++ exception
        Rectangle(int, int, int, int) except +
        
        int getArea()
        void getSize(int* width, int* height)
        void move(int, int)
