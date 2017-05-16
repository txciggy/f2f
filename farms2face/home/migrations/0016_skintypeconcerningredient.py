# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2017-05-02 20:18
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('facepackwizard', '0004_auto_20170324_1818'),
        ('home', '0015_auto_20170425_1323'),
    ]

    operations = [
        migrations.CreateModel(
            name='SkinTypeConcernIngredient',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ingredient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Ingredient')),
                ('skin_concern', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinConcern')),
                ('skin_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinType')),
            ],
        ),
    ]