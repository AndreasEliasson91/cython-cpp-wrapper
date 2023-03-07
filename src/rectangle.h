#ifndef RECTANGLE_H
#define RECTANGLE_H

namespace shapes {
    class Rectangle {
        public:
            int xmin, ymin, xmax, ymax;

            Rectangle();
            Rectangle(int xmin, int ymin, int xmax, int ymax);
            ~Rectangle();

            int getArea();
            void getSize(int* width, int* height);
            void move(int dx, int dy);
    };
}

#endif
