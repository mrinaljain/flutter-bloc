# bloc_app

## Getting Started


"BLOC is not just a State Management Library , but it is also a Design Pattern as well as a Architecture Pattern"
  
## Cubit
Cubit are special kind of stream components , which is based upon some functions which are called from UI component, those funchtions rebuild UI by emmiting diffrent States on a Stream.

- has only one Stream the Emmiting State stream



## BLOC

- has 2 streams the  Emmiting State stream and also recives Events Stream





### Cubit vs BLOC
- Cubit is a minimal version of BLOC
- BLOC extends cubit
- in cubit functions are not part of the stream, they are simply pre-defined list of what a cubit can do.




### When to use Cubit and when to use BLOC?
Cubit use kre to direct UI se funcyion call krna hota hai 
Bloc method mai  hum UI se event bejte hai phir Bloc usko handle kryta hai , isse hume flexibility milti hai ki hum kya krna chahte hai.




- event

- bloc

- state






- Stream


## Widgets inside BLOC


BlocProvider :
  BlocProvider is a flutter widget which creates and provides all its childrens the access to that Bloc (also known as Dependency injection)

   - BlocProvider creates a single instance of BLOC uing a function which takes a BuildContext as an argument and returns a single instance of BLOC
   ```
      BlocProvider(
         create:(BuildContext context) => BLocA();
         child: ChildWidget();
      )
   ```
   
   - Accessing the bloc furthur down in widget becomes very easy
   ```
   BlocProvider.of<BlocA>(context)
   //OR
   context.of<BlocA>();
   ```
   - By default all BLOCs ar created lazily that mean they are created when needed
   ```

   ```
   - BlocProvider also automatically closes the Bloc

   -BLOCProvider.value


 

BlocBuilder :
   A widget that helps in rebuilding the UI based on any changes on BLOC state.
   - rebuilds widget every time state changes
   ```
      BlocBuilder(<Bloc, Event>){
         builder:(context, state){
            return widget;
         }
      }
   ```
   - Extra Buildwhen parameter can be added to BlocBuilder to controll when to rebuild and when to not rebuild.
     
     ```
      BlocBuilder(<Bloc, Event>){
         buildWhen:(previousState){
            return true/false
         }
         builder:(context, state){
            return widget;
         }
      }
     ```

BlocListener :
  A flutter widget that listens to the changes in state 
  
  - called once per state , not including initstate
  - optional listenWhenn can also be added
  ```
  
  ```



### Diffrence in BlocBuilder and BlocListener [video](https://www.youtube.com/watch?v=NqUx-NfTts4&list=PLptHs0ZDJKt_T-oNj_6Q98v-tBnVf-S_o&index=4)

- BB can be called multiple times, BL is just called once

BlocConsumer :
   A widget which is addition of BlocBuilder + BlocListener


RepositoryProvider :




## BLOC Architecture

- Presentation Layer
- Bisiness Logic LAyer

- Data Layer
Responsibility is to garher data from diffrent sources [ Data Sources ]

Further Divided into 
   - Repositories

      - Mostly maps the raw data [recived from data provider[API]] to model class.
   - Data Providers
    Daraprovider 's responsibility is to provide Data to the Repository Layer.

   - Models
   Model is a blueprint to the data your app will be working with.


### How BLOC Processes  the Event recived and => updates the State ?




TODO:

bloc with freezed / generators