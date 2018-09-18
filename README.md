# ElixirPlayground
A sandbox for learning Elixir and its environment

# Step 1 - Create an Umbrella Application
1. mix new elixir_playground_umbrella --umbrella
  * Similar to .NET Solution
  * Used for delineating logic or separating distict services

# Step 2 - Create Data Logic Application
1. mix new elvenhearth --sup
  * A --sup option can be given to generate an OTP application skeleton including a supervision tree. Normally an app is generated without a supervisor and without the app callback.