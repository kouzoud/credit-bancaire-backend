package metier;

import lombok.Data;

public class Metier implements IntMertie {
    @Override
    public double mertie(double c, double t, double n) {
        double premierTherme=(c*t)/12;
        double duexiemeTherme=1-(1+t/12);
        double m=premierTherme/duexiemeTherme;
        return m;

    }
}
