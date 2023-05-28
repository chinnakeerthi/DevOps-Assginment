import psutil
import datetime

def get_total_cpu():
    return psutil.cpu_percent()

def get_average_cpu():
    cpu_percentages = psutil.cpu_percent(interval=1, percpu=True)
    return sum(cpu_percentages) / len(cpu_percentages)

def get_total_memory():
    mem = psutil.virtual_memory()
    return mem.total

def get_consumed_memory():
    mem = psutil.virtual_memory()
    return mem.used

def get_average_cpu_last_seven_days():
    cpu_percentages = []
    current_date = datetime.datetime.now().date()
    for i in range(7):
        delta = datetime.timedelta(days=i)
        date = current_date - delta
        cpu_percentages.extend(psutil.cpu_percent(interval=1, percpu=True))
    return sum(cpu_percentages) / len(cpu_percentages)

# Usage example
total_cpu = get_total_cpu()
average_cpu = get_average_cpu()
total_memory = get_total_memory()
consumed_memory = get_consumed_memory()
average_cpu_last_seven_days = get_average_cpu_last_seven_days()

print("Total CPU usage:", total_cpu)
print("Average CPU usage:", average_cpu)
print("Total Memory:", total_memory)
print("Consumed Memory:", consumed_memory)
print("Average CPU usage for the last 7 days:", average_cpu_last_seven_days)
