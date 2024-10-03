void main() {
  Book book1 = Book("Horward anton", "woei", "asd", true);

  Library library = Library();
  library.addbook(book1);
  Member m1 = Member("joey", "maq2");
  library.loansBook(book1, m1);
}

class Book {
  String name;
  String title;
  String author;
  bool isAvailable = false;

  Book(this.name, this.title, this.author, this.isAvailable);
}

class Library {
  List<Book> books = [];
  List<Loans> loans = [];

  void loansBook(Book book, Member member) {
    if (book.isAvailable) {
      book.isAvailable = false;
      loans.add(Loans(book, member, DateTime.now()));
    }
  }

  void addbook(Book book) {
    books.add(book);
  }

  void listbook(Book book) {
    print("List ---of-----Books");
    for (var book in books) {
      print("TiTle:${book.title}, Name:${book.name}, Author:${book.author}");
    }
  }

  void listloanbook(Book book) {
    print("List ---of-----Books");
    for (var loan in loans) {
      print(
          "TiTle:${loan.book.title}, Name:${loan.book.name}, Author:${loan.book.author}");
    }
  }
}

class Member {
  String name;
  String memberId;

  Member(this.name, this.memberId);
}

class Loans {
  Book book;
  Member member;
  DateTime loandate;
  DateTime? returnDate;

  Loans(this.book, this.member, this.loandate, [this.returnDate]);

  void returndate(DateTime returnDate) {
    returnDate = DateTime.now();
    book.isAvailable = true;
  }
}
