.class public abstract Lcom/android/camera/ManualAbstractHal3UI;
.super Ljava/lang/Object;
.source "ManualAbstractHal3UI.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$FaceDetectionListener;
.implements Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelCountDown()V
.end method

.method public abstract clearFaces()V
.end method

.method public abstract foldAllOptions()V
.end method

.method public abstract getEditSingleRing()Z
.end method

.method public abstract getEditableMode()Z
.end method

.method public abstract getFaceView()Lcom/android/camera/ui/FaceView;
.end method

.method public abstract getFocusRing()Lcom/android/camera/ui/focus/FocusRing;
.end method

.method public abstract initializeZoom(FF)V
.end method

.method public abstract isCountingDown()Z
.end method

.method public abstract loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V
.end method

.method public abstract onStopFaceDetection()V
.end method

.method public abstract pauseFaceDetection()V
.end method

.method public abstract resumeFaceDetection()V
.end method

.method public abstract setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V
.end method

.method public abstract setEditableMode(ZZ)V
.end method

.method public abstract setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V
.end method

.method public abstract setOrientation(IZ)V
.end method

.method public abstract startCountdown(I)V
.end method

.method public abstract updateManualContentUI(Ljava/lang/String;Ljava/lang/String;)V
.end method
