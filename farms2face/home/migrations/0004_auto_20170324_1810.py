# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-25 01:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_auto_20170324_1808'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='customfacepack',
            name='facepack',
        ),
        migrations.RemoveField(
            model_name='customfacepack',
            name='optional_ingredient',
        ),
        migrations.RemoveField(
            model_name='customfacepack',
            name='recipe',
        ),
        migrations.RemoveField(
            model_name='prepack',
            name='facepack',
        ),
        migrations.RemoveField(
            model_name='prepack',
            name='ingredient',
        ),
        migrations.DeleteModel(
            name='CustomFacePack',
        ),
        migrations.DeleteModel(
            name='PrePack',
        ),
    ]