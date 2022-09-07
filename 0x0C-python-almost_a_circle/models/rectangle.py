#!/usr/bin/python3
"""this module contains the base class for following files"""
import json
import os


class Base:
    """this class will be the base of all others"""
    __nb_objects = 0

    def __init__(self, id=None):
        self.__nb_objects = 0
        if id is not None:
            self.id = id
        else:
            Base.__nb_objects += 1
            self.id = Base.__nb_objects

    def to_json_string(list_dictionaries):
        """returns the jason string of a dictionary"""
        return json.dumps(list_dictionaries)

    @classmethod
    def save_to_file(cls, list_objs):
        filename = cls.__name__ + ".json"
        jstr = []
        if list_objs is not None:
            for i in list_objs:
                jstr.append(cls.to_dictionary(i))
        with open(filename, 'w', encoding="utf-8",) as fileA:
            fileA.write(cls.to_json_string(jstr))

    @classmethod
    def create(cls, **dictionary):
        if cls.__name__ == "Rectangle":
            dumdum = cls(1, 1)
        if cls.__name__ == "Square":
            dumdum = cls(1)
        dumdum.update(**dictionary)
        return dumdum

    @classmethod
    def load_from_file(cls):
        filename = cls.__name__ + ".json"
        if os.path.isfile(filename):
            with open(filename, 'r', encoding="utf-8",) as fileA:
                return json.load(fileA)
        else:
            thisList = []
            return thisList
