package my.project.model;

/**
 * Created by 1107 on 2018-04-22.
 */
public class Analyze {
    Integer bike;
    Integer car;
    Integer walk;
    Integer bus;
    Integer train;

    Integer bike_true;
    Integer car_true;
    Integer walk_true;
    Integer bus_true;
    Integer train_true;

    String accuracy;

    public String getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(String accuracy) {
        this.accuracy = accuracy;
    }

    public Integer getBike_true() {
        return bike_true;
    }

    public void setBike_true(Integer bike_true) {
        this.bike_true = bike_true;
    }

    public Integer getCar_true() {
        return car_true;
    }

    public void setCar_true(Integer car_true) {
        this.car_true = car_true;
    }

    public Integer getWalk_true() {
        return walk_true;
    }

    public void setWalk_true(Integer walk_true) {
        this.walk_true = walk_true;
    }

    public Integer getBus_true() {
        return bus_true;
    }

    public void setBus_true(Integer bus_true) {
        this.bus_true = bus_true;
    }

    public Integer getTrain_true() {
        return train_true;
    }

    public void setTrain_true(Integer train_true) {
        this.train_true = train_true;
    }

    public Integer getBike() {
        return bike;
    }

    public void setBike(Integer bike) {
        this.bike = bike;
    }

    public Integer getCar() {
        return car;
    }

    public void setCar(Integer car) {
        this.car = car;
    }

    public Integer getWalk() {
        return walk;
    }

    public void setWalk(Integer walk) {
        this.walk = walk;
    }

    public Integer getBus() {
        return bus;
    }

    public void setBus(Integer bus) {
        this.bus = bus;
    }

    public Integer getTrain() {
        return train;
    }

    public void setTrain(Integer train) {
        this.train = train;
    }
}
