1. flutter run --flavor prod -t lib/main_prod.dart 
2. flutter run --flavor prod -t lib/main_dev.dart 

iOS setup: https://www.youtube.com/watch?v=GwAnn1auo8o&t=336s&ab_channel=MusawwirMaqsood
Android setup: https://www.youtube.com/watch?v=s0lMwQjy2zM&t=354s&ab_channel=Evoqys




Android: (Check makefile folder)
1. create the flavor_config.dart and past the code
2. create the main_dev.dart & main_prod.dart file and past the code
void main() {
  AppEnvironment.setupEnv(Environment.dev); // for dev
  AppEnvironment.setupEnv(Environment.prod); // for prod
  runApp(const MyApp());
}
3. Remove the main() function from main.dart file
4. Past the code in android -> app -> build.gradle
under buildTypes() method
5. Now configure the main_dev.dart & main_prod.dart in run  
Go to: Run -> Edit Configurations -> Dart entrypoint
=> 1st the the file path in Dart entrypoint
=> Write the dev or prod in Build Flavor option
6. Enter the path Android -> app -> src -> Then create the dev and prod file
In this file, create the app name for different environment.
Change the android:label in main->res->AndroidManifest.xml to
android:label="@string/app_name"

google-services.json = android -> app -> src -> dev
google-services.json = android -> app -> src -> prod

iOS: (Video in makefile_ios)





