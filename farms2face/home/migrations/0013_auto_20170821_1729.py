# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-08-22 00:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0012_item_price_single'),
    ]

    operations = [
        migrations.AlterField(
            model_name='item',
            name='price_single',
            field=models.DecimalField(decimal_places=2, default=34.0, max_digits=6),
        ),
    ]
