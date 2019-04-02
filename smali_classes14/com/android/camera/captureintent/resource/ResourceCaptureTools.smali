.class public interface abstract Lcom/android/camera/captureintent/resource/ResourceCaptureTools;
.super Ljava/lang/Object;
.source "ResourceCaptureTools.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;
    }
.end annotation


# virtual methods
.method public abstract getBurstFacade()Lcom/android/camera/burst/BurstFacade;
.end method

.method public abstract getCamera()Lcom/android/camera/one/OneCamera;
.end method

.method public abstract getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;
.end method

.method public abstract getFaceDetectionListener()Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.end method

.method public abstract getFocusController()Lcom/android/camera/ui/focus/FocusController;
.end method

.method public abstract getMainThread()Lcom/android/camera/async/MainThread;
.end method

.method public abstract getMediaActionSound()Landroid/media/MediaActionSound;
.end method

.method public abstract getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;
.end method

.method public abstract getOrientation()I
.end method

.method public abstract getResourceConstructed()Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceConstructed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceOpenedCamera()Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceOpenedCamera;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceSurfaceTexture()Lcom/android/camera/async/RefCountBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/RefCountBase",
            "<",
            "Lcom/android/camera/captureintent/resource/ResourceSurfaceTexture;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract onFirstPreviewReady(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V
.end method

.method public abstract onVideoShutterClick()V
.end method

.method public abstract playCountDownSound(I)V
.end method

.method public abstract takePictureNow(Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/captureintent/resource/ResourceCaptureTools$CaptureLoggingInfo;)V
.end method
