.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
.super Ljava/lang/Object;
.source "ImageProxy.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCropRect()Landroid/graphics/Rect;
.end method

.method public abstract getFormat()I
.end method

.method public abstract getHeight()I
.end method

.method public abstract getOriginImage()Landroid/media/Image;
.end method

.method public abstract getPlanes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getWidth()I
.end method

.method public abstract setCropRect(Landroid/graphics/Rect;)V
.end method
