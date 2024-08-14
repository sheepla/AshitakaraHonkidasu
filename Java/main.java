import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Main {
    public static void main(String[] args) {
        LocalDate tomorrow = LocalDate.now().plusDays(1);

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM/dd");
        System.out.printf("%sから本気出す\n", tomorrow.format(formatter));
    }
}
