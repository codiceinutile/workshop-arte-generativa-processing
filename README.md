# Workshop Arte Generativa
In questo repository puoi trovare codice e risorse per i partecipanti ai corsi di Arte Generativa con [Processing](https://www.processing.org) tenuti da [codiceinutile](https://www.codiceinutile.org) nel 2019. Il workshop è indirizzato sia a chi ha già esperienze di programmazione sia a chi parte completamente da zero.

## Tools
La prima cosa da fare è scaricare Processing a [questo indirzzo](https://processing.org/download/). Processing è un linguaggio di programmazione *open source* e gratuito, disponibile per Windows, macOS e Linux.

## Getting Started
Tutti i programmi che realizzeremo avranno questo codice di partenza:
```
void setup() {

}

void draw() {

}
```
Ricorda: lo schermo ragiona in **pixel** e il punto di riferimento (0, 0) è rappresentato dall'angolo in alto a sinistra dello schermo. La funzione `size()` determina la grandezza della nostra tela: utilizzeremo principalmente la risoluzione 1920x1080 che corrisponde a 16:9 full HD. In alternativa puoi usare la funzione `fullScreen()` che adatterà lo sketch alla risoluzione dello schermo del tuo computer.

Se utilizzi uno schermo ad alta risoluzione, come, ad esempio, un *retina display* consiglio di utilizzare la funzione: `pixelDensity(2)` che renderà i tuoi sketch più definiti.

Una versione più completa del codice di partenza potrebbe, dunque, essere:
```
void setup() {
    size(1920, 1080);
    pixelDensity(2);

}

void draw() {

}
```

## Forme geometriche
### Linee
Per disegnare una linea servono quattro parametri: posizione x e y del primo punto e posizione x e y del secondo punto:
```
line(x1, y1, x2, y2);
```
### Rettangoli e quadrati
Per disegnare un rettangolo servono quattro parametri: posizione x e y sullo schermo, larghezza e altezza. Se queste ultime due coincidono, sarà, ovviamente, un quadrato. 
```
rect(x, y, width, height);
```
Di default la posizione x e y di riferimento si riferiscono all'angolo in alto a sinistra del rettangolo/quadrato. Se vuoi fare in modo che sia il centro devi aggiungere prima di disegnare il rettangolo:
```
rectMode(CENTER);
```
### Cerchi ed ellissi
Come per i quadrati e i rettangoli, per disegnare un cerchio avrai sempre bisogno di quattro parametri: x e y di riferimento e 