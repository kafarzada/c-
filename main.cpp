#include <iostream>


using namespace std;

struct node {
    int data;
    node *next;
    node *prev;

    node(int x, node *prevn, node *nextn) {
        data = x;
        prev = prevn;
        next = nextn;
    }
};



typedef node *link;
link addItem();


class List {
    private:
        link Head;
        link Tail;
    public:
        List():Head(NULL), Tail(NULL) {}

        bool isEmpty() {
            return Head == NULL ? true : false;
        }

        int getHead() {
            return Head->data;
        }

        int getTail() {
            return Tail->data;
        }

        void print() {
            if(isEmpty()) {
                cout << "Список пустой" << endl;
                return;
            } 
            for(link i = Head; i != NULL; i = i->next) {
                cout << i->data << '\t';
            }
            return;
        }

        int Length() {

            if(Head == NULL && Tail == NULL) {
                return 0;
            }
            int count = 0;
            for(link i = Head; i != NULL; i = i->next) {
                count += 1;
            }

            return count;
        }

        int addItem(int data)  {
            link newNode;
            if(Head == NULL) {
                newNode = new node(data, NULL, Tail);
                Head = newNode;
                Tail = newNode;
                return newNode->data;
            }
            for(link i = Head; i != NULL; i = i->next) {
                if(i->next == NULL) {
                    newNode = new node(data, i, NULL);
                    i->next = newNode;
                    Tail = newNode;
                    break;
                }
            }

            

            return newNode->data;
        }

        int push(int data) {
            
        }
        
        int pop() {
            if(Head == Tail) {
                if(Head != NULL) {
                    delete Head;
                    Head = NULL;
                    Tail = NULL;
                    return 1;
                } else {
                    return 0;
                }
            }

            link x = Tail->prev;
            delete Tail;
            Tail = x;
            Tail->next = NULL;
            return 0;
        }

        int removeItem(int data) {
            if(Head == NULL) {
                return 0;
            }
            if(data == Head->data) {
                link x = Head->next;
                delete Head;
                Head = x;
                return 1;
                
            }

            if(data == Tail->data) {
                link x = Tail->prev;
                delete Tail;
                Tail = x;
                Tail->next = NULL;
                return 1;
            }
            for(link i = Head; i != NULL; i = i->next) {
                if(i->data == data) {
                    if(i->next != NULL) {
                        link x = i;
                        i->prev->next = i->next;
                        i->next->prev = x->prev;
                        delete i;
                        return 1;
                    } else {
                        i->prev->next = NULL;
                        delete i;
                        return 1;
                    }

                }
            }

            return 0;
        }
};


int main() {

    List l  = List();
    l.print();
    l.removeItem(12);
    cout << l.Length() << endl;
    return 0;
} 

