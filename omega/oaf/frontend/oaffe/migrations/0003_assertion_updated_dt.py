# Generated by Django 4.1.7 on 2023-03-03 23:44

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('oaffe', '0002_policy'),
    ]

    operations = [
        migrations.AddField(
            model_name='assertion',
            name='updated_dt',
            field=models.DateTimeField(auto_now=True),
        ),
    ]
