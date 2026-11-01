%TASK1

%Start program execution with an initial basket containing 5 items
start :- 
    InitialBasket = [coffee, milk, chocolate, apple, juice],
    menu(InitialBasket).

% Menu display and options rule
menu(Basket) :-
    nl,
    write('*** SHOPPING LIST ***'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process_choice(Choice, Basket).

%'d': display items
process_choice(d, Basket) :-
    nl, write('--- Current Items ---'), nl,
    display_items(Basket),
    menu(Basket).

%'a': add a new item
process_choice(a, Basket) :-
    nl, write('enter the item you want to add it : '),
    read(NewItem),
    NewBasket = [NewItem | Basket], % Add the new item to the front of the list
    write('The item has been added'), nl,
    menu(NewBasket).

%'e': exit the program
process_choice(e, _) :-
    write('Goodbye!'), nl.

% Handle invalid choices
process_choice(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

% Recursive predicate to display items one by one
display_items([]). % Base case: Empty list
display_items([Head | Tail]) :-
    write(Head), nl,
    display_items(Tail).





% Task 2: Delete Every Occurrence of an Item
% ==========================================

% Base case: deleting from an empty list yields an empty list
deleteElement(_, [], []).

% Case 1: The element to delete is the head of the list
deleteElement(X, [X | Tail], Result) :-
    deleteElement(X, Tail, Result).

% Case 2: The element is different from X
deleteElement(X, [Y | Tail], [Y | Result]) :-
    X \= Y,
    deleteElement(X, Tail, Result).



% Task 3: Add an Item at the End of the List
% ==========================================

add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head | Tail], [Head | Result]) :-
    add_at_the_end(X, Tail, Result).



















