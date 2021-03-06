# Create your models here.

from __future__ import unicode_literals
from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType

class Privacy(models.Model):
    name = models.CharField(max_length=1000)
    details = models.CharField(max_length=5000)
    def __str__(self):
        return self.name+" "+self.details[:20]

class Contact(models.Model):
    name = models.CharField(max_length=1000)
    def __str__(self):
        return self.name

class Disclaimer(models.Model):
    name = models.CharField(max_length=1000)
    def __str__(self):
        return self.name

class Ingredient(models.Model):
    name = models.CharField(max_length=1000)
    helper = models.CharField(max_length=1000, blank=True, null=True)
    description = models.CharField(max_length=2000, blank=True, null=True)
    image = models.FileField(upload_to='images/ingredients/')
    def __str__(self):
        return self.name

class Base(models.Model):
    name = models.CharField(max_length=1000)
    helper = models.CharField(max_length=1000, blank=True, null=True)
    description = models.CharField(max_length=2000, blank=True, null=True)
    skin_type = models.ForeignKey('facepackwizard.SkinType', 
                                  on_delete=models.CASCADE)
    image = models.FileField(upload_to='images/base/')
    def __str__(self):
        return self.name+"_"+self.skin_type.name

class SkinTypeIngredient(models.Model):
    skin_type = models.ForeignKey('facepackwizard.SkinType', 
                                  on_delete=models.CASCADE)
    ingredient = models.ForeignKey(Ingredient, 
				  on_delete=models.CASCADE)
    def __str__(self):
        return self.skin_type.name+"_"+self.ingredient.name

class SkinTypeConcernIngredient(models.Model):
    skin_type = models.ForeignKey('facepackwizard.SkinType', on_delete=models.CASCADE)
    skin_concern = models.ForeignKey('facepackwizard.SkinConcern', on_delete=models.CASCADE)
    ingredient = models.ForeignKey(Ingredient, on_delete=models.CASCADE)
    def __str__(self):
        return self.skin_type.name+"__"+self.skin_concern.name+\
	       "__"+self.ingredient.name

class MixingAgent(models.Model):
    name = models.CharField(max_length=1000)
    helper = models.CharField(max_length=1000, blank=True, null=True)
    description = models.CharField(max_length=2000, blank=True, null=True)
    skin_type = models.ForeignKey('facepackwizard.SkinType', null=True, 
      				  on_delete=models.CASCADE)
    image = models.FileField(upload_to='images/mixing_agents/')
    def __str__(self):
        return self.name+"_"+self.skin_type.name

class Recipe(models.Model):
    skin_type = models.ForeignKey('facepackwizard.SkinType', on_delete=models.CASCADE)
    skin_concern = models.ForeignKey('facepackwizard.SkinConcern', on_delete=models.CASCADE)
    mandatory_ingredient = models.ForeignKey(Ingredient, 
				             on_delete=models.CASCADE)
    def __str__(self):
        return self.skin_type.name+"__"+self.skin_concern.name+\
	       "__"+self.mandatory_ingredient.name

class Item(models.Model):
    name = models.CharField(max_length=1000, blank=True)
    price = models.DecimalField(max_digits=6, decimal_places=2, default=34.00)
    price_single = models.DecimalField(max_digits=6, decimal_places=2, default=34.00)
    price_regular = models.DecimalField(max_digits=6, decimal_places=2, default=29.00)
    price_intense = models.DecimalField(max_digits=6, decimal_places=2, default=48.00)
    helper = models.CharField(max_length=1000, blank=True)
    createdte = models.DateTimeField(default=timezone.now)
    def __str__(self):
        return str(self.id)+" "+self.name

class FacePack(Item):
    base = models.ForeignKey(Base, on_delete=models.CASCADE)
    mixing_agent = models.ForeignKey(MixingAgent, on_delete=models.CASCADE)
    image = models.FileField(upload_to='images/prepacks/', null=True)
    made_with = models.CharField(max_length=5000, null=True, blank=True)
    description = models.CharField(max_length=5000, null=True, blank=True)
    def __str__(self):
        return str(self.name)+" "+str(self.base)+" "+str(self.mixing_agent)
    def __unicode__(self):
        return unicode(self.id) or u''

class CustomFacePack(models.Model):
    facepack = models.ForeignKey(FacePack, on_delete=models.CASCADE)
    recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE, null=True)
    optional_ingredient = models.ForeignKey(Ingredient, 
                                            blank=True, null=True, 
                                            on_delete=models.CASCADE)
    user = models.ForeignKey(User)
    questionnaire = models.ForeignKey('facepackwizard.QuestionnaireUserData', on_delete=models.CASCADE, null=True)
    def __str__(self):
        return str(self.facepack)
    def __unicode__(self):
        return unicode(self.facepack) or u''

class PrePack(models.Model):
    facepack = models.ForeignKey(FacePack, on_delete=models.CASCADE)
    highlights = models.CharField(max_length=1000, null=True, blank=True)
    who = models.CharField(max_length=5000, null=True, blank=True)
    made_with = models.CharField(max_length=1000, null=True, blank=True)
    def __str__(self):
        return str(self.facepack)
    def __unicode__(self):
        return unicode(self.facepack) or u''


class PrePackIngredients(models.Model):
    prepack = models.ForeignKey(PrePack, on_delete=models.CASCADE)
    ingredient = models.ForeignKey(Ingredient, on_delete=models.CASCADE)
    def __str__(self):
        return str(self.prepack)+" "+str(self.ingredient)
    def __unicode__(self):
        return unicode(self.prepack) or u''

class FAQ(models.Model):
    question = models.CharField(max_length=1000)
    answer = models.CharField(max_length=4000)
    def __str__(self):
        return self.question+" "+self.answer[:20]+"..."
