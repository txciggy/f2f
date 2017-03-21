# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-26 07:56
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('facepackwizard', '0010_auto_20170225_2342'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='custompack',
            name='base',
        ),
        migrations.RemoveField(
            model_name='custompack',
            name='facepack',
        ),
        migrations.RemoveField(
            model_name='custompack',
            name='mixing_agent',
        ),
        migrations.RemoveField(
            model_name='custompack',
            name='optional_ingredient',
        ),
        migrations.RemoveField(
            model_name='custompack',
            name='recipe',
        ),
        migrations.RemoveField(
            model_name='facepack',
            name='user',
        ),
        migrations.RemoveField(
            model_name='prepack',
            name='facepack',
        ),
        migrations.RemoveField(
            model_name='prepack',
            name='ingredient',
        ),
        migrations.RemoveField(
            model_name='purchases',
            name='facepack',
        ),
        migrations.RemoveField(
            model_name='purchases',
            name='user',
        ),
        migrations.DeleteModel(
            name='CustomPack',
        ),
        migrations.DeleteModel(
            name='FacePack',
        ),
        migrations.DeleteModel(
            name='PrePack',
        ),
        migrations.DeleteModel(
            name='Purchases',
        ),
    ]