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

void printList(link head) {
    for(link i = head; i != nullptr; i = i->next) {
        cout << i->data << '\t';
    }
}

link addItem(link head, int data) {
    
    link x = head;


    while(x != nullptr) {
        x = x->next;
    }
    x->next = new node(data, x, nullptr);
}

class List {
    private:
        link Head;
    public:
        List():Head(NULL) {}

        bool isEmpty() {
            return Head == NULL ? true : false;
        }

        link getHead() {
            return Head;
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
            int count = 0;
            for(link i = Head; i != NULL; i = i->next) {
                count += 1;
            }

            return count;
        }

        int addItem(int data)  {
            link newNode;
            if(Head == NULL) {
                newNode = new node(data, NULL, NULL);
                Head = newNode;
                
                return newNode->data;
            }
            for(link i = Head; i != NULL; i = i->next) {
                if(i->next == NULL) {
                    newNode = new node(data, i, NULL);
                    i->next = newNode;
                    break;
                }
            }

            

            return newNode->data;
        }

        int push(int data) {
            
        }

        int removeItem(int data) {
            if(data == Head->data) {
                link x = Head->next;
                delete Head;
                Head = x;
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

    List list = List();

    cout << list.addItem(1) << endl;
    cout << list.addItem(2) << endl;
    cout << list.addItem(3) << endl;
    cout << list.addItem(4) << endl;

    list.removeItem(1);
    list.print();

    return 0;
} 

