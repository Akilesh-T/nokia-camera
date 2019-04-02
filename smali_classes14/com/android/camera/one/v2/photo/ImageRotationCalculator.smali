.class public interface abstract Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
.super Ljava/lang/Object;
.source "ImageRotationCalculator.java"


# virtual methods
.method public abstract getOrientationManager()Lcom/android/camera/app/OrientationManager;
.end method

.method public abstract getSupplier()Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.end method
