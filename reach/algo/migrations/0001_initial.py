# Generated by Django 4.2.6 on 2023-10-20 14:32

import algo.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Beach',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('beach_name', models.CharField(max_length=255, verbose_name='Beach Name')),
                ('beach_location', models.CharField(max_length=255, verbose_name='Beach Location')),
                ('beach_rating', models.DecimalField(decimal_places=2, max_digits=3, verbose_name='Beach Rating')),
                ('beach_image', models.ImageField(default='br_pic/image.jpg', upload_to=algo.models.image_path, verbose_name='Beach Photo')),
                ('facebook_page_id', models.CharField(blank=True, max_length=25, null=True, verbose_name='Facebook Page ID')),
            ],
        ),
        migrations.CreateModel(
            name='BeachAndResort',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('BandR_name', models.CharField(max_length=255, verbose_name='Beach and Resort Name')),
                ('BandR_location', models.CharField(max_length=255, verbose_name='Beach and Resort Location')),
                ('BandR_rating', models.DecimalField(decimal_places=2, default=0.0, max_digits=3, verbose_name='Beach and Resort Rating')),
                ('BandR_image', models.ImageField(default='br_pic/image.jpg', upload_to=algo.models.image_path, verbose_name='Beach and Resort Photo')),
                ('facebook_page_id', models.CharField(blank=True, max_length=25, null=True, verbose_name='Facebook Page ID')),
            ],
        ),
        migrations.CreateModel(
            name='Resort',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('resort_name', models.CharField(max_length=255, verbose_name='Resort Name')),
                ('resort_location', models.CharField(max_length=255, verbose_name='Resort Location')),
                ('resort_rating', models.DecimalField(decimal_places=2, max_digits=3, verbose_name='Resort Rating')),
                ('resort_image', models.ImageField(default='br_pic/image.jpg', upload_to=algo.models.image_path, verbose_name='Resort Photo')),
                ('facebook_page_id', models.CharField(blank=True, max_length=25, null=True, verbose_name='Facebook Page ID')),
            ],
        ),
    ]
