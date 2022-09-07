#!/usr/bin/python3
"""this module contains the rectangle class"""


Rectangle = __import__('models.rectangle').rectangle.Rectangle


class Square(Rectangle):
    """the square class inheriting from Rectangle"""

    def __init__(self, size, x=0, y=0, id=None):
        """initializes an instance of square"""
        super().__init__(width=size, height=size, x=x, y=y, id=id)

    def __str__(self):
        """sets the string value of squares"""
        return "[Square] ({}) {}/{} - {}"\
            .format(self.id, self.x, self.y, self.width)

    @property
    def size(self):
        """returns the value of size"""
        return self.width

    @size.setter
    def size(self, value):
        """sets the value of height and width"""
        self.width = value
        self.height = value

    def update(self, *args, **kwargs):
        """updates the square with new args"""
        if kwargs is not None:
            for keyword, value in kwargs.items():
                setattr(self, keyword, value)
        if len(args) == 1:
            self.id = args[0]
        if len(args) == 2:
            self.int_validator("width", args[1])
            self.des_validator("width", args[1])
            self.width = args[1]
            self.int_validator("height", args[1])
            self.des_validator("height", args[1])
            self.height = args[1]
        if len(args) == 3:
            self.int_validator("x", args[2])
            self.pos_validator("x", args[2])
            self.x = args[2]
        if len(args) == 4:
            self.int_validator("y", args[3])
            self.pos_validator("y", args[3])
            self.y = args[3]

    def to_dictionary(self):
        """returns a dictionary refrence of self"""
        refr = {'id': self.id, 'size': self.size, 'x': self.x, 'y': self.y}
        return refr
