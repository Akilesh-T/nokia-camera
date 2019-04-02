.class public interface abstract Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;
.super Ljava/lang/Object;
.source "ImageCaptureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/ImageCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MetadataChangeListener"
.end annotation


# virtual methods
.method public abstract onImageMetadataChange(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Landroid/hardware/camera2/CaptureResult;",
            ")V"
        }
    .end annotation
.end method
