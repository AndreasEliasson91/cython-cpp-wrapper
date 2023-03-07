#include <iostream>
#include "rectangle.h"

namespace shapes {
    Rectangle::Rectangle() {}  // Default constructor

    Rectangle::Rectangle(int xmin, int ymin, int xmax, int ymax)
    : xmin{xmin}, ymin{ymin}, xmax{xmax}, ymax{ymax} {}  // Overloaded constructor

    Rectangle::~Rectangle() {}  // Desctructor

    int Rectangle::getArea() { return (this->xmax - this->xmin) * (this->ymax - this->ymin); }
    void Rectangle::getSize(int* width, int* height) {
        (*width) = xmax - xmin;
        (*height) = ymax - ymin;
    }
    void Rectangle::move(int dx, int dy) {
        this->xmin += dx;
        this->ymin += dy;
        this->xmax += dx;
        this->ymax += dy;
    }
}
