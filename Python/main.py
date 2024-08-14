from datetime import datetime, timedelta

tomorrow = (datetime.now() + timedelta(days=1)).strftime('%m/%d')

print(f'{tomorrow}から本気出す')
