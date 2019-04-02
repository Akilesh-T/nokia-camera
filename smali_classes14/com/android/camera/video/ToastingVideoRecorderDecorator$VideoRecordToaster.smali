.class public Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;
.super Ljava/lang/Object;
.source "ToastingVideoRecorderDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/video/ToastingVideoRecorderDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoRecordToaster"
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mContext:Landroid/content/Context;

.field private final mSurroundSoundSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mActivity:Lcom/android/camera/CameraActivity;

    .line 55
    invoke-virtual {p3}, Lcom/android/camera/one/OneCameraCaptureSetting;->getSurroundSoundSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mSurroundSoundSetting:Lcom/android/camera/async/Observable;

    .line 56
    return-void
.end method


# virtual methods
.method public showToastBurstStarted()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mSurroundSoundSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v0, v1}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/video/ToastingVideoRecorderDecorator$VideoRecordToaster;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 62
    :cond_0
    return-void
.end method

.method public showToastBurstStopped()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
