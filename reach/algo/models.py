from django.db import models
from django.utils.html import mark_safe
from django.utils import timezone
import os, random
from datetime import datetime

def image_path(instance, filename):
    basefilename, file_extension = os.path.splitext(filename)
    chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890'
    randomstr = ''.join((random.choice(chars)) for x in range(10))
    _now = datetime.now()
    
    return 'br_pic/{year}-{month}-{imageid}-{basename}-{randomstring}{ext}'.format(imageid = instance, basename=basefilename, randomstring=randomstr, ext=file_extension, year=_now.strftime('%Y'), month =_now.strftime('%M'), day = _now.strftime('%D'))

class Beach(models.Model):
    beach_name = models.CharField(max_length=255, verbose_name='Beach Name')
    beach_location = models.CharField(max_length=255, verbose_name='Beach Location')
    beach_rating = models.DecimalField(max_digits=3, decimal_places=2, verbose_name='Beach Rating')
    beach_image = models.ImageField(upload_to=image_path, default='br_pic/image.jpg', verbose_name='Beach Photo')
    facebook_page_id = models.CharField(max_length=25, verbose_name='Facebook Page ID', blank=True, null=True)
    
    def image_tag(self):
        return mark_safe('<img src="/media/%s" width="50" height="50">' % (self.beach_image))

    def __str__(self):
        return self.beach_name

class Resort(models.Model):
    resort_name = models.CharField(max_length=255, verbose_name='Resort Name')
    resort_location = models.CharField(max_length=255, verbose_name='Resort Location')
    resort_rating = models.DecimalField(max_digits=3, decimal_places=2, verbose_name='Resort Rating')
    resort_image = models.ImageField(upload_to=image_path, default='br_pic/image.jpg', verbose_name='Resort Photo')
    facebook_page_id = models.CharField(max_length=25, verbose_name='Facebook Page ID', blank=True, null=True)

    def image_tag(self):
        return mark_safe('<img src="/media/%s" width="50" height="50">' % (self.resort_image))

    def __str__(self):
        return self.resort_name

class BeachAndResort(models.Model):
    BandR_name = models.CharField(max_length=255, verbose_name='Beach and Resort Name')
    BandR_location = models.CharField(max_length=255, verbose_name='Beach and Resort Location')
    BandR_rating = models.DecimalField(max_digits=3, decimal_places=2, verbose_name='Beach and Resort Rating', default=0.0)
    BandR_image = models.ImageField(upload_to=image_path, default='br_pic/image.jpg', verbose_name='Beach and Resort Photo')
    facebook_page_id = models.CharField(max_length=25, verbose_name='Facebook Page ID', blank=True, null=True)

    def image_tag(self):
        return mark_safe('<img src="/media/%s" width="50" height="50">' % (self.BandR_image))

    def __str__(self):
        return self.BandR_name



class Place(models.Model):
    name = models.CharField(max_length=255, verbose_name='Name')
    location = models.CharField(max_length=255, verbose_name='Location')
    rating = models.DecimalField(max_digits=3, decimal_places=2, verbose_name='Rating', default=0.0)
    image = models.ImageField(upload_to=image_path, default='br_pic/image.jpg', verbose_name='Photo')
    facebook_page_id = models.CharField(max_length=50, verbose_name='Facebook Page ID', blank=True, null=True)
    is_beach = models.BooleanField(default=False, verbose_name='Is Beach')
    is_resort = models.BooleanField(default=False, verbose_name='Is Resort')
    place_identifier = models.CharField(max_length=50, verbose_name='Place Identifier', unique=True)
    keywords = models.CharField(max_length=300, verbose_name='Keywords', default='')

    def image_tag(self):
        return mark_safe('<img src="/media/%s" width="50" height="50">' % (self.image))

    def __str__(self):
        return self.name