.class public interface abstract Lcom/android/camera/one/v2/imageprocessor/ImageProcessor$Builder;
.super Ljava/lang/Object;
.source "ImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract build(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;ZIILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Landroid/hardware/camera2/CameraCharacteristics;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForDualCam(Lcom/android/ex/camera2/portability/CaptureIntent;[BIFFILandroid/graphics/Point;IIILcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForDualSight(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZILcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForLogicCam(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILandroid/graphics/Point;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForMegvii(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IILjava/lang/String;ZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;Z)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForPanorama(Lcom/android/ex/camera2/portability/CaptureIntent;FFLcom/android/camera/util/Size;Lcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract buildForPicSelf(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/util/Size;IZIZILcom/android/camera/one/v2/imagesaver/ImageSaver;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.end method

.method public abstract updatePostCaptureCrop(Landroid/graphics/Rect;)V
.end method
