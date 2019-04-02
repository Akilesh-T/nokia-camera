.class public abstract Lcom/android/camera/ManualAbstractUI;
.super Ljava/lang/Object;
.source "ManualAbstractUI.java"

# interfaces
.implements Lcom/android/camera/ui/PreviewStatusListener;
.implements Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract animateFlash()V
.end method

.method public abstract cancelCountDown()V
.end method

.method public abstract clearFaces()V
.end method

.method public abstract foldAllOptions()V
.end method

.method public abstract getEditableMode()Z
.end method

.method public abstract getFaceView()Lcom/android/camera/ui/FaceView;
.end method

.method public abstract getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
.end method

.method public abstract initializeFirstTime()V
.end method

.method public abstract initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
.end method

.method public abstract isCountingDown()Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onStartFaceDetection(IZ)V
.end method

.method public abstract onStopFaceDetection()V
.end method

.method public abstract pauseFaceDetection()V
.end method

.method public abstract resetPreviewOverlay()V
.end method

.method public abstract resumeFaceDetection()V
.end method

.method public abstract setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
.end method

.method public abstract setDisplayOrientation(I)V
.end method

.method public abstract setEditableMode(ZZ)V
.end method

.method public abstract setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
.end method

.method public abstract setSwipingEnabled(Z)V
.end method

.method public abstract setViewVisible(I)V
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract startCountdown(I)V
.end method

.method public abstract updateManualContent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
