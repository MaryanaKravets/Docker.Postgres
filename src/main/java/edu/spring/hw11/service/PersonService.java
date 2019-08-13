package edu.spring.hw11.service;

import edu.spring.hw11.exception.NotFoundExceptions;
import edu.spring.hw11.objects.Author;
import edu.spring.hw11.objects.Book;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class PersonService implements IPersonService {
    private List<Book> bookList = new ArrayList<>(Arrays.asList(
            new Book(1, "Wilder girls", "Thriller",
                    "It's been eighteen months since the Raxter School for Girls was put under quarantine", 5),
            new Book(2, "Java Core", "Science",
                    "In this book you will find lots of sample code to fully understand the Java language and library", 4),
            new Book(3, "ProGit", "Science",
                    "This book to cover Version Control System and Git", 3),
            new Book(4, "Spring in action", "Science",
                    "Фреймворк Spring Framework - необходимий инструмент для разработчиков приложений на Java", 4),
            new Book(5, " Під куполом", "Fantasy",
                    "Напередодні Гелловіна місто Честер Мілл невідома сила накриває прозорим куполом", 3),
            new Book(6, " The chain", "Thriller",
                    "A stranger has kidnapped your child", 4),
            new Book(7, " Spin the dawn", "Fantasy",
                    "About young girl who poses as a boy to compete for the role of imperial tailor", 1),
            new Book(8, " The marriage clock", "Comedy",
                    "In Zara Raheem's fresh,funny,smart debut,a young, Muslim-American woman is given three months to find the husband", 5),
            new Book(9, " The billion dollar secret", "Business",
                    "There is no other book available anywhere in the world that contains this much entrepreneurial experience", 3)
    ));
    private List<Author> authorList = new ArrayList<>(Arrays.asList(
            new Author(1, "Rory", "Power",
                    new HashSet<Book>(bookList.subList(0, 1))),
            new Author(2, "Say", "Horstmann",
                    new HashSet<Book>(bookList.subList(1, 2))),
            new Author(3, "Scott", "Chacon",
                    new HashSet<Book>(bookList.subList(2, 3))),
            new Author(4, "Crag", "Walls",
                    new HashSet<Book>(bookList.subList(3, 4))),
            new Author(5, "Стівен", "Кінг",
                    new HashSet<Book>(bookList.subList(4, 5))),
            new Author(6, "Adrian", "McKinty",
                    new HashSet<Book>(bookList.subList(5, 6))),
            new Author(7, "Elizabeth", "Lim",
                    new HashSet<Book>(bookList.subList(6, 7))),
            new Author(8, "Zara", "Raheem",
                    new HashSet<Book>(bookList.subList(7, 8))),
            new Author(9, "Rafael", "Badziag",
                    new HashSet<Book>(bookList.subList(8, 9)))
    ));

    @Override
    public List<Author> addAuthor(int id, String fName, String lName) {
        Author author = new Author(id, fName, lName);
        authorList.add(author);
        return authorList;
    }

    @Override
    public List<Author> deleteAuthor(int id) {
        authorList.removeIf(a -> a.getId() == id);
        return authorList;
    }

    @Override
    public List<Book> addBook(int id, String title, String genre, String description, int rate) {
        Book book = new Book(id, title, genre, description, rate);
        bookList.add(book);
        return bookList;
    }

    @Override
    public List<Book> deleteBook(int id) {
        bookList.removeIf(b -> b.getId() == id);
        return bookList;
    }

    @Override
    public void addBookToAuthor(int authorId, Book book) {
        authorList.stream()
                .filter(a -> a.getId() == authorId)
                .findAny()
                .orElseThrow(() -> new RuntimeException("Item not found"))
                .setBook(book);
    }

    @Override
    public List<Book> sortedBookByAuthor(int authorId) {
        return authorList.stream()
                .filter(a -> a.getId() == authorId)
                .flatMap(a -> a.getBook().stream())
                .collect(Collectors.toList());
    }

    @Override
    public List<Book> sortedBookByGenre(String genre) {
        return bookList.stream()
                .filter(b -> b.getGenre().equals(genre))
                .collect(Collectors.toList());
    }

    @Override
    public Book updateBook(int bookId, int updateBookId) {
        bookList.stream()
                .filter(b -> b.getId() == bookId)
                .forEach(b -> b.setId(updateBookId));
        return bookList.stream().filter(b -> b.getId() == updateBookId)
                .findAny().orElseThrow(NotFoundExceptions::new);
    }

    @Override
    public Author updateAuthor(int authorId, int updateAuthorId) {
        authorList.stream()
                .filter(a -> a.getId() == authorId)
                .forEach(b -> b.setId(updateAuthorId));
        return authorList.stream().filter(a -> a.getId() == updateAuthorId)
                .findAny().orElseThrow(NotFoundExceptions::new);
    }
}