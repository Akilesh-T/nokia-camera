.class public interface abstract Lcom/android/camera/app/CameraAppUI$CameraModuleScreenShotProvider;
.super Ljava/lang/Object;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraModuleScreenShotProvider"
.end annotation


# virtual methods
.method public abstract getEmptyScreenShot()Landroid/graphics/Bitmap;
.end method

.method public abstract getOriPreviewFrame(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getPreviewFrame(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getPreviewOverlayAndControls()Landroid/graphics/Bitmap;
.end method

.method public abstract getScreenShot(IZ)Landroid/graphics/Bitmap;
.end method
