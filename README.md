Treegram

(modified by S. Anastasiadis and A. Katsoulieris for the course MYE042 Internet Technologies, Department of Computer Science and Engineering, School of Enginering, University of Ioannina, Ioannina, Greece)

==============

A simple ruby on rails app. Allows a user to create an account with username, password, and avatar. After login user can upload photos to their account and tag other users in the photos.

Installation and Usage
------------
Run Postrges Sever

Clone or download this repository and cd into indent directory

```
$ rake db:create
$ rake db:migrate
$ rails server
```

In your browser visit localhost:3000

Motivation
--------
> **To Practice:**
>- Ruby On Rails project setup
>- User authentication
>- Paperclip gem for uploading files
>- SASS 
>- Unit testing with RSPEC
>- Integration testing with CAPYBARA

Authors
------

Kathryn Carr, J Sivakumaran, and Lizzie Koehler

License
-------

MIT license

# Treegram

Μια διαδικτυακή εφαρμογή κοινωνικής δικτύωσης και διαμοιρασμού φωτογραφιών, υλοποιημένη με **Ruby on Rails**. Οι χρήστες μπορούν να δημιουργούν λογαριασμό, να ακολουθούν άλλους χρήστες, να ανεβάζουν φωτογραφίες, να κάνουν tags και να αλληλεπιδρούν μέσω σχολίων.

## Λειτουργίες

* **Διαχείριση Λογαριασμού & Προφίλ:** Εγγραφή χρήστη με φωτογραφία προφίλ (avatar), σύνδεση/αποσύνδεση και προβολή προφίλ.
* **Σύστημα Follow:** Δυνατότητα παρακολούθησης (follow/unfollow) άλλων χρηστών, με εμφάνιση των φωτογραφιών τους στη ροή του προφίλ σε χρονολογική σειρά.
* **Φωτογραφίες & Tags:** Ανέβασμα φωτογραφιών με τίτλο, προσθήκη ετικετών (tags) σε άλλους χρήστες και διαγραφή των δικών σας φωτογραφιών.
* **Σχόλια:** Προσθήκη σχολίων σε φωτογραφίες. Κάθε χρήστης μπορεί να διαγράψει τα δικά του σχόλια, ενώ ο ιδιοκτήτης μιας φωτογραφίας μπορεί να διαγράψει οποιοδήποτε σχόλιο βρίσκεται σε αυτήν.
* **Διαγραφή Προφίλ:** Δυνατότητα οριστικής διαγραφής του λογαριασμού ενός χρήστη, με αυτόματο καθαρισμό όλων των φωτογραφιών, σχολίων, tags και follows που σχετίζονται με αυτόν.

## Τεχνολογίες

* **Framework:** Ruby on Rails
* **Βάση Δεδομένων:** SQLite3
* **Frontend:** HAML, Sass, Bootstrap

## Εκτέλεση τοπικά

Για να τρέξετε την εφαρμογή στον υπολογιστή σας:

1. Κατεβάστε το αποθετήριο:
   ```bash
   git clone [https://github.com/to-username-sou/treegram.git](https://github.com/GeorgePapp/treegram.git)
   cd treegram
