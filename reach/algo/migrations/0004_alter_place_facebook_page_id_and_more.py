# Generated by Django 4.2.7 on 2023-11-10 02:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('algo', '0003_alter_place_place_identifier'),
    ]

    operations = [
        migrations.AlterField(
            model_name='place',
            name='facebook_page_id',
            field=models.CharField(blank=True, max_length=50, null=True, verbose_name='Facebook Page ID'),
        ),
        migrations.AlterField(
            model_name='place',
            name='place_identifier',
            field=models.CharField(max_length=50, unique=True, verbose_name='Place Identifier'),
        ),
    ]