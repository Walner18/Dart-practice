/*abstract class Animal {
    void eat();
/*}

/*mixin Swimmer on Animal {
    void swim() {
        print('I am swimming');
    }
/*}

/*class Dolphin extends Animal with Swimmer {
    @override
    void eat() {
        print('The dolphin eats fish');
    }
/*+}

abstract class Vehicle {
    void showType();
}

class Car implements Vehicle {
    @override
    void showType() {
        print('Car');
    }
}

class Motorcycle implements Vehicle {
    @override
    void showType() {
        print('Motorcycle');
    }
}

class VehicleFactory {
    static Vehicle createVehicle(String type) {
        switch (type.toLowerCase()) {
            case 'car':
                return Car();
            case 'motorcycle':
                return Motorcycle();
            default:
                throw Exception('Unknown vehicle type');
        }
    }
}

void main() {
    // Demonstrating the Dolphin class
    Dolphin dolphin = Dolphin();
    dolphin.eat();
    dolphin.swim();

    // Demonstrating the VehicleFactory
    try {
        Vehicle vehicle1 = VehicleFactory.createVehicle('car');
        vehicle1.showType();

        Vehicle vehicle2 = VehicleFactory.createVehicle('motorcycle');
        vehicle2.showType();

        Vehicle vehicle3 = VehicleFactory.createVehicle('bicycle'); // This will throw an exception
        vehicle3.showType();
    } catch (e) {
        print(e);
    }
}
