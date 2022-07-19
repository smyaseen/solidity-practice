// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Structs {

    // A common sort of Object
    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    // storage vs memory
    // memory is valid until execution and destroys when function is done execution
    // storage is pass by reference and remains

    function example() external returns (Car[] memory) {
        Car memory toyota = Car("Corolla", 1990, msg.sender);
        Car memory honda = Car({year: 2010, model: "Civic", owner: msg.sender});

        Car memory nissan;
        nissan.model = "350Z";
        nissan.year = 2020;
        nissan.owner = msg.sender;

        cars.push(toyota);
        cars.push(honda);
        cars.push(nissan);

        Car storage _car = cars[0];
        _car.year = 2007;
        delete _car.owner;

        delete cars[1];

        return cars;
    }

}