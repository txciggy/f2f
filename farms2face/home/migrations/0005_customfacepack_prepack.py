# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-25 01:12
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0004_auto_20170324_1810'),
    ]

    operations = [
        migrations.CreateModel(
            name='CustomFacePack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('facepack', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.FacePack')),
                ('optional_ingredient', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='home.Ingredient')),
                ('recipe', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Recipe')),
            ],
        ),
        migrations.CreateModel(
            name='PrePack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('facepack', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.FacePack')),
                ('ingredient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Ingredient')),
            ],
        ),
    ]