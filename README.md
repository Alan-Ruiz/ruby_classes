## Ruby Classes & Instances

In this exercise, we are going to implement a simple car (`Car` ruby class ) where a user can turn on the engine, drive and refill the gas.

If you need a reminder of how to define your own class on ruby, check out this [Guide](https://www.rubyguides.com/2019/02/ruby-class/)

## Specs
**Do not run `rake` right away**. The goal of the exercise is for you to **read** some Ruby code, and trying to figure out what's missing in the `Car` class.


Open the lib/driving_scenario.rb, and read it line by line. You can do some [Rubber Duck Debugging](https://rubberduckdebugging.com/) where you explain line by line what the code does to your duck. Once you’ve done that, let’s run the code:

```bash
ruby lib/driving_scenario.rb
```
The code will **fail** with an error message. That's the beginning of the exercise! You need to figure out what code you need to add in the `lib/car.rb` to make this scenario work!

Same for the gas_station_scenario, run the file, work through the errors
adding the methods that are missing on the Car class

```bash
ruby lib/gas_station_scenario.rb
```

### Finally, we can `rake`

When you are happy with how the two scenarios work, check that your code is correct with:

```bash
rake
```

There might be a little more work to do in your `Car` class 😉