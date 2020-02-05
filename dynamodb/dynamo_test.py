import boto3

dynamodb = boto3.client('dynamodb', region_name='ap-south-1', endpoint_url="http://localhost:8000")

table_name = "Movies"
existing_tables = dynamodb.list_tables()['TableNames']

if table_name not in existing_tables:
  table = dynamodb.create_table(
    TableName=table_name,
    KeySchema=[
      {
          'AttributeName': 'year',
          'KeyType': 'HASH'  #Partition key
      },
      {
          'AttributeName': 'title',
          'KeyType': 'RANGE'  #Sort key
      }
    ],
    AttributeDefinitions=[
      {
          'AttributeName': 'year',
          'AttributeType': 'N'
      },
      {
          'AttributeName': 'title',
          'AttributeType': 'S'
      },
    ],
    ProvisionedThroughput={
      'ReadCapacityUnits': 10,
      'WriteCapacityUnits': 10
    }
  )
  print("New table '%s' successfully created" % table_name)
else:
  print("Table '%s' already exists" % table_name)

existing_tables = dynamodb.list_tables()['TableNames']
print("Tables: ", existing_tables)
