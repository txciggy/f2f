# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-26 11:01
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('facepackwizard', '0012_auto_20170225_2358'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='purchases',
            name='quantity',
        ),
        migrations.AddField(
            model_name='facepack',
            name='quantity',
            field=models.IntegerField(default=1),
        ),
    ]
