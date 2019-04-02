.class public interface abstract Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract createNonPreview(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract createRecordOnly(I)Lcom/android/camera/one/v2/core/RequestBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract createReprocess(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)Lcom/android/camera/one/v2/core/RequestBuilder;
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method
