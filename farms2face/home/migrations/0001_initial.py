# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-24 20:09
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('facepackwizard', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Base',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
                ('helper', models.CharField(blank=True, max_length=1000, null=True)),
                ('image', models.FileField(upload_to='images/base/')),
                ('skin_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinType')),
            ],
        ),
        migrations.CreateModel(
            name='CustomFacePack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
        ),
        migrations.CreateModel(
            name='FacePack',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('base', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Base')),
            ],
        ),
        migrations.CreateModel(
            name='Ingredient',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
                ('helper', models.CharField(blank=True, max_length=1000, null=True)),
                ('image', models.FileField(upload_to='images/ingredients/')),
            ],
        ),
        migrations.CreateModel(
            name='Item',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(blank=True, max_length=1000)),
                ('helper', models.CharField(blank=True, max_length=1000)),
                ('createdte', models.DateTimeField(default=django.utils.timezone.now)),
            ],
        ),
        migrations.CreateModel(
            name='MixingAgent',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=1000)),
                ('helper', models.CharField(blank=True, max_length=1000, null=True)),
                ('image', models.FileField(upload_to='images/mixing_agents/')),
                ('skin_type', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinType')),
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
        migrations.CreateModel(
            name='Recipe',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('mandatory_ingredient', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Ingredient')),
                ('skin_concern', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinConcern')),
                ('skin_type', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='facepackwizard.SkinType')),
            ],
        ),
        migrations.AddField(
            model_name='facepack',
            name='item',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Item'),
        ),
        migrations.AddField(
            model_name='facepack',
            name='mixing_agent',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.MixingAgent'),
        ),
        migrations.AddField(
            model_name='customfacepack',
            name='facepack',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.FacePack'),
        ),
        migrations.AddField(
            model_name='customfacepack',
            name='optional_ingredient',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='home.Ingredient'),
        ),
        migrations.AddField(
            model_name='customfacepack',
            name='recipe',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='home.Recipe'),
        ),
    ]
