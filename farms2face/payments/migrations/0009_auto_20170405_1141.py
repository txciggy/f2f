# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-05 18:41
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('payments', '0008_creditcard_owner_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='payment',
            name='type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='payments.PaymentType'),
        ),
    ]
