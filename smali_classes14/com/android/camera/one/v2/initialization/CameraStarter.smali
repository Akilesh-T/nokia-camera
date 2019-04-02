.class public interface abstract Lcom/android/camera/one/v2/initialization/CameraStarter;
.super Ljava/lang/Object;
.source "CameraStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
    }
.end annotation


# virtual methods
.method public abstract createImageReaderForJpegPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
.end method

.method public abstract createImageReaderForPicture(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
.end method

.method public abstract createImageReaderForRaw(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
.end method

.method public abstract createImageReaderForReprocess(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;I)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
.end method

.method public abstract getInputConfiguration(Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;I)Landroid/hardware/camera2/params/InputConfiguration;
.end method

.method public abstract getWorkAroundStreamlList(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCameraCharacteristics;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startCamera(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Observable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Updatable;Lcom/android/camera/async/Observable;)Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/opengl/image/ImageGeneratorProvider;",
            "Lcom/android/camera/burst/BurstFacade;",
            "Lcom/android/camera/one/OneCameraCaptureSetting;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<[",
            "Landroid/hardware/camera2/params/Face;",
            ">;)",
            "Lcom/android/camera/one/v2/initialization/CameraStarter$CameraControls;"
        }
    .end annotation
.end method
