import pandas as pd

df = pd.read_csv("movies.csv")

# Convert ?, invalid text, etc. to missing numeric values
df["gross"] = pd.to_numeric(df["gross"], errors="coerce")

df.to_csv("movies_clean.csv", index=False)

print("Done! movies_clean.csv created.")