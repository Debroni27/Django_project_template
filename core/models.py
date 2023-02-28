
import uuid

from django.db import models


class BaseModel(models.Model):
    """Базовая модель"""

    id = models.UUIDField(
        unique=True, editable=False, primary_key=True, default=uuid.uuid4
    )
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_created=True)

    class Meta:
        abstract = True
        ordering = ["-created_at", "-updated_at"]