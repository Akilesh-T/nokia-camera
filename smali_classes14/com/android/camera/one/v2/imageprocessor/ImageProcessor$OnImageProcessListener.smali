.class public interface abstract Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$OnImageProcessListener;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnImageProcessListener"
.end annotation


# virtual methods
.method public abstract onCaptureFinish()V
.end method

.method public abstract onPostProcessImageReady([BLcom/android/camera/processing/imagebackend/ImageInfo;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onProcessCancel()V
.end method

.method public abstract onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;Lcom/android/camera/processing/imagebackend/ImageInfo;)V
.end method

.method public abstract onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;)V
.end method

.method public abstract onProcessDone([BLcom/android/camera/processing/imagebackend/ImageInfo;I)V
.end method

.method public abstract onProcessError(I)V
.end method

.method public abstract onProcessStart()V
.end method
