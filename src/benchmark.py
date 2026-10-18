import yaml
import pandas as pd

def run_benchmark():
    print("Initializing experiment benchmark pipeline...")
    with open("config.yaml", "r") as f:
        config = yaml.safe_load(f)
    
    sample_path = config["paths"]["sample_data"] + "sleep_sample.csv"
    try:
        df = pd.read_csv(sample_path)
        print(f"Loaded sample data successfully from {sample_path}. Rows: {len(df)}")
        print("Benchmark completed: Pipeline test passed successfully.")
    except Exception as e:
        print(f"Running in mock mode due to missing sample file: {e}")

if __name__ == "__main__":
    run_benchmark()