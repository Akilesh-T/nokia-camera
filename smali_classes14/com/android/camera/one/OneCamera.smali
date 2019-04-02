.class public interface abstract Lcom/android/camera/one/OneCamera;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;,
        Lcom/android/camera/one/OneCamera$CaptureParameters;,
        Lcom/android/camera/one/OneCamera$LengsState;,
        Lcom/android/camera/one/OneCamera$SceneModeChangeListener;,
        Lcom/android/camera/one/OneCamera$SceneRecognitionListener;,
        Lcom/android/camera/one/OneCamera$FaceDetectionListener;,
        Lcom/android/camera/one/OneCamera$LensStateListener;,
        Lcom/android/camera/one/OneCamera$FocusStateListener;,
        Lcom/android/camera/one/OneCamera$PictureSaverCallback;,
        Lcom/android/camera/one/OneCamera$PictureCallback;,
        Lcom/android/camera/one/OneCamera$ScreenFlashController;,
        Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;,
        Lcom/android/camera/one/OneCamera$CaptureReadyCallback;,
        Lcom/android/camera/one/OneCamera$OpenCallback;,
        Lcom/android/camera/one/OneCamera$AutoFocusState;,
        Lcom/android/camera/one/OneCamera$Facing;
    }
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
.end method

.method public abstract getDirection()Lcom/android/camera/one/OneCamera$Facing;
.end method

.method public abstract getMaxZoom()F
.end method

.method public abstract getSlaveCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getSlaveMaxZoom()F
.end method

.method public abstract getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;
.end method

.method public abstract isFlashRequired()Z
.end method

.method public abstract pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
.end method

.method public abstract pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
.end method

.method public abstract pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
.end method

.method public abstract pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
.end method

.method public abstract reset()V
.end method

.method public abstract setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
.end method

.method public abstract setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
.end method

.method public abstract setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V
.end method

.method public abstract setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
.end method

.method public abstract setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V
.end method

.method public abstract setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
.end method

.method public abstract setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
.end method

.method public abstract setSlaveZoom(F)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
.end method

.method public abstract takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
.end method

.method public abstract triggerFocusAndMeterAtPoint(FF)V
.end method
