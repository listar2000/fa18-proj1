# Q0: Why are these two errors being thrown?

The 'PendingMigrationError' is thrown because I didn't run `rails db:migrate` in the console.
The 'NameError' of the 'uninitialized constant ... ::PokeMon' occurs because we haven't implemented a model for it.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

The Pokemons appear alternatively in turn even though sometimes there're repetitions. The common factor is that all Pokemons that appeared are in their "primitive type" before any evolution.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

The function of this line is to create a HTML `button` which send a patch request to the `/path/:id` route. 
`capture` is a prefix for the route and it enables developers to easily get the route without having to remember and "hard-code" it into the project.

# Question 3: What would you name your own Pokemon?

DaddyDenero (A Pokemon that attacks the opponent with Python/Scheme codes)

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I pass into a helper `trainer_path` into it with the id of the trainer (so that we can redirect to the page of the original trainer)

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

I didn't figure out how to use this... Instead, I try to send a error signal to the controller every time when the creation fails, resulting in a javascript alert box at the top of the page (using embedded `<script></script`)

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

repo link: https://github.com/listar2000/fa18-proj1