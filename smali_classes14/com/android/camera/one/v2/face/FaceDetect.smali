.class public Lcom/android/camera/one/v2/face/FaceDetect;
.super Ljava/lang/Object;
.source "FaceDetect.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHighestFaceDetectMode(Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;
    .locals 2
    .param p0, "characteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p1, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 37
    invoke-static {p1}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isFaceDetectAllow(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-interface {p0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getLegacyValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    .line 49
    :goto_0
    return-object v1

    .line 42
    :cond_0
    invoke-interface {p0}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedFaceDetectModes()Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "faceDetectModes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;>;"
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->FULL:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    goto :goto_0

    .line 46
    :cond_1
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->SIMPLE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    goto :goto_0

    .line 49
    :cond_2
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;->NONE:Lcom/android/camera/one/OneCameraCharacteristics$FaceDetectMode;

    goto :goto_0
.end method
