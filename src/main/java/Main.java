import Entity.*;
import persistence.*;
import org.hibernate.Session;

public class Main {
    public static void main(String[] args) {
        System.out.println("Start");

        Session session = HibernateUtil.getSessionFactory().openSession();

        session.beginTransaction();

        Shop shop = new Shop();

        shop.setName("Molotok");
        shop.setRoom_area(60);
        shop.setShop_location("Something");

        session.save(shop);

        Stuff stuff = new Stuff();

        stuff.setName("Andrew");
        stuff.setSurname("Moskovets");
        stuff.setSalary(1234);
        stuff.setShop(shop);

        session.save(stuff);

        session.getTransaction().commit();
        System.out.println("Done");


    }
}
