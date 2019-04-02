.class final Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;
.super Ljava/lang/Object;
.source "FlashBasedPhotoCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mDenoiseImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mFlashAutoCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mFlashMode:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mFlashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mHDRImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mHandleUltraWideDC:Z

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mLowLightImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

.field private final mUltraWideCaptureCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# direct methods
.method constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/google/common/base/Supplier;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/photo/SceneDetector;Z)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p2, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p4, "flashOnCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p5, "flashAutoCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p6, "flashOffCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p7, "hdrImageCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p8, "denoiseImageCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p9, "lowlightImageCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p10, "ultraWideCaptureCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p11, "sceneDetector"    # Lcom/android/camera/one/v2/photo/SceneDetector;
    .param p12, "handleUltraWideDC"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/one/OneCameraCharacteristics;",
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/photo/SceneDetector;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "flashMode":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "FlashBasedPhotoCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    .line 64
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 65
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashMode:Lcom/google/common/base/Supplier;

    .line 66
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 67
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashAutoCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 68
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 69
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mHDRImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 70
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mDenoiseImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 71
    iput-object p9, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLowLightImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 72
    iput-object p10, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mUltraWideCaptureCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 73
    iput-object p11, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    .line 74
    iput-boolean p12, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mHandleUltraWideDC:Z

    .line 75
    return-void
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 5
    .param p2, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "imageExposeCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mSceneDetector:Lcom/android/camera/one/v2/photo/SceneDetector;

    invoke-interface {v2}, Lcom/android/camera/one/v2/photo/SceneDetector;->get()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    move-result-object v1

    .line 83
    .local v1, "sceneMode":Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    invoke-static {}, Lcom/android/camera/DebugManager;->getInstance()Lcom/android/camera/DebugManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/DebugManager;->isJPEGMode()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sceneMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 86
    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->HDR:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running HDR command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mHDRImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mHDRImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    .line 121
    :goto_0
    return-void

    .line 89
    :cond_1
    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->DENOISE:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running DENOISE command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mDenoiseImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mDenoiseImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto :goto_0

    .line 92
    :cond_2
    sget-object v2, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->LOWLIGHT:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 93
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running LOWLIGHT command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLowLightImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLowLightImageCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mHandleUltraWideDC:Z

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running Ultra-Wide command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mUltraWideCaptureCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mUltraWideCaptureCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mOneCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->isFlashSupported()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 101
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    const-string v3, "Flash Supported by hardware."

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashMode:Lcom/google/common/base/Supplier;

    invoke-interface {v2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .line 103
    .local v0, "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flashMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    if-ne v0, v2, :cond_5

    .line 105
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running flash-on command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOnCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto/16 :goto_0

    .line 107
    :cond_5
    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    if-ne v0, v2, :cond_6

    .line 108
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running flash-auto command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashAutoCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashAutoCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto/16 :goto_0

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running flash-off command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    :cond_7
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    const-string v3, "Flash Not Supported by hardware."

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "running flash-off command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/FlashBasedPhotoCommand;->mFlashOffCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V

    goto/16 :goto_0
.end method
