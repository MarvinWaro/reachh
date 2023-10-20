from django.contrib import admin
from .models import Beach, Resort, BeachAndResort

# Register your models here.

admin.site.site_header = "B&R Selection Admin"
admin.site.site_title = "B&R Selection Admin Area"
admin.site.index_title = "Welcome To Admin Area"

class BeachAdmin(admin.ModelAdmin):
    list_display = ['image_tag', 'beach_name', 'beach_location', 'beach_rating', 'facebook_page_id']
    search_fields = ['beach_name', 'beach_location', 'beach_rating', 'facebook_page_id']
    
class ResortAdmin(admin.ModelAdmin):
    list_display = ['image_tag', 'resort_name', 'resort_location', 'resort_rating', 'facebook_page_id']
    search_fields = ['resort_name', 'resort_location', 'resort_rating', 'facebook_page_id']
    
class BeachAndResortAdmin(admin.ModelAdmin):
    list_display = ['image_tag', 'BandR_name', 'BandR_location', 'BandR_rating', 'facebook_page_id']
    search_fields = ['BandR_name', 'BandR_location', 'BandR_rating', 'facebook_page_id']

admin.site.register(Beach, BeachAdmin)
admin.site.register(Resort, ResortAdmin)  # Register the Resort model
admin.site.register(BeachAndResort, BeachAndResortAdmin)