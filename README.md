# bloc_app

## Getting Started

  
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

BlocConsumer :
 

BlocBuilder :


BlocListener :





TODO:

bloc with freezed / generators