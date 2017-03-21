# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-02-24 06:16
from __future__ import unicode_literals

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0008_alter_user_username_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='Base',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.CreateModel(
            name='CustomPack',
            fields=[
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('createdte', models.DateTimeField(blank=True, default=datetime.datetime.now)),
                ('base', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.Base')),
            ],
        ),
        migrations.CreateModel(
            name='FacePack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='Ingredient',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.CreateModel(
            name='MixingAgent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.CreateModel(
            name='PrePacks',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
                ('createdte', models.DateTimeField(blank=True, default=datetime.datetime.now)),
                ('facepack', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.FacePack')),
                ('ingredient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.Ingredient')),
            ],
        ),
        migrations.CreateModel(
            name='Purchases',
            fields=[
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to=settings.AUTH_USER_MODEL)),
                ('transaction_id', models.BigIntegerField()),
                ('quantity', models.IntegerField(default=1)),
                ('facepack', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.FacePack')),
            ],
        ),
        migrations.CreateModel(
            name='Recipe',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mandatory_ingredient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.Ingredient')),
            ],
        ),
        migrations.CreateModel(
            name='SkinConcern',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.CreateModel(
            name='SkinType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
            ],
        ),
        migrations.AddField(
            model_name='recipe',
            name='skin_concern',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinConcern'),
        ),
        migrations.AddField(
            model_name='recipe',
            name='skin_type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinType'),
        ),
        migrations.AddField(
            model_name='custompack',
            name='facepack',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.FacePack'),
        ),
        migrations.AddField(
            model_name='custompack',
            name='mixing_agent',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.MixingAgent'),
        ),
        migrations.AddField(
            model_name='custompack',
            name='optional_ingredient',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.Ingredient'),
        ),
        migrations.AddField(
            model_name='custompack',
            name='recipe',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.Recipe'),
        ),
    ]
