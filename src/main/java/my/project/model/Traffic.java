package my.project.model;

/**
 * Created by 1107 on 2018-04-23.
 */
public class Traffic {
    Integer walk;
    Integer bus;
    Integer train;
    Integer car;
    Integer bike;
    Integer best=0;
    String tra="";

    public Integer getBest() {
        return best;
    }

    public void setBest(Integer best) {
        this.best = best;
    }

    public String getTra() {
        return tra;
    }

    public void setTra(String tra) {
        this.tra = tra;
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

    public Integer getCar() {
        return car;
    }

    public void setCar(Integer car) {
        this.car = car;
    }

    public Integer getBike() {
        return bike;
    }

    public void setBike(Integer bike) {
        this.bike = bike;
    }
}
