.class public interface abstract Lcom/android/camera/watermark/WatermarkImageSaver$WatermarkImageSavedCallback;
.super Ljava/lang/Object;
.source "WatermarkImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/watermark/WatermarkImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WatermarkImageSavedCallback"
.end annotation


# virtual methods
.method public abstract onPictureSave([BIILcom/android/camera/exif/ExifInterface;ZI)Z
.end method

.method public abstract onPictureSaveFinished([B)V
.end method

.method public abstract onThumbnailUpdate(ILandroid/graphics/Bitmap;)V
.end method
