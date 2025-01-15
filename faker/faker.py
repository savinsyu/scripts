import pandas as pd
from faker import Faker
fake = Faker('ru_RU')
df = pd.DataFrame(columns=['Name', 'Address'],)
df['Name'] = [fake.name() for _ in range(100)]
df['Address'] = [fake.address() for _ in range(100)]
df.reset_index()
df.head()
df.to_excel('fake_data.xlsx', index=False)