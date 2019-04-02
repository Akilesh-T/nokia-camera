.class public Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
.super Ljava/lang/Object;
.source "CameraAppUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/CameraAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomBarUISpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;
    }
.end annotation


# instance fields
.field public beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public cancelCallback:Landroid/view/View$OnClickListener;

.field public doneCallback:Landroid/view/View$OnClickListener;

.field public effectCallback:Landroid/view/View$OnClickListener;

.field public enableAutoHdr:Z

.field public enableBeauty:Z

.field public enableCamera:Z

.field public enableCameraScreen:Z

.field public enableDaulCamSwitcher:Z

.field public enableDualCamera:Z

.field public enableDualTwiceshot:Z

.field public enableEffect:Z

.field public enableExposureCompensation:Z

.field public enableFlash:Z

.field public enableGridLines:Z

.field public enableHdr:Z

.field public enableHdrPlusFlash:Z

.field public enableLens:Z

.field public enableLiveBroadcast:Z

.field public enableMotion:Z

.field public enablePanoOrientation:Z

.field public enableSelfTimer:Z

.field public enableSettings:Z

.field public enableSoundFocus:Z

.field public enableSuperResolution:Z

.field public enableTorchFlash:Z

.field public exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

.field public exposureCompensationStep:F

.field public flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public gridLinesCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public hideCamera:Z

.field public hideCameraScreen:Z

.field public hideDaulCamSwitcher:Z

.field public hideDualCamera:Z

.field public hideEffect:Z

.field public hideFlash:Z

.field public hideGridLines:Z

.field public hideHdr:Z

.field public hideLiveBroadcast:Z

.field public hideSoundFocus:Z

.field public isExposureCompensationSupported:Z

.field public isModulePause:Z

.field public liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public maxExposureCompensation:I

.field public minExposureCompensation:I

.field public motionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public movableShutterButton:Z

.field public panoOrientationCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public retakeCallback:Landroid/view/View$OnClickListener;

.field public reviewCallback:Landroid/view/View$OnClickListener;

.field public showBeauty:Z

.field public showCancel:Z

.field public showDone:Z

.field public showDualTwiceshot:Z

.field public showLens:Z

.field public showMotion:Z

.field public showRetake:Z

.field public showReview:Z

.field public showSelfTimer:Z

.field public showSuperResolution:Z

.field public soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field public superResolutionCallback:Lcom/android/camera/ButtonManager$ButtonCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 710
    iput-boolean v1, p0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 717
    iput-boolean v1, p0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 722
    iput-boolean v1, p0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    return-void
.end method
