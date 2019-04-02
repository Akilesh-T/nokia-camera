.class public Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;
.super Ljava/lang/Object;
.source "ToastingBurstFacadeDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/ToastingBurstFacadeDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BurstToaster"
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mActivity:Lcom/android/camera/CameraActivity;

.field private final mContext:Landroid/content/Context;

.field private final mFlashSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;",
            ">;"
        }
    .end annotation
.end field

.field private final mHDRSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstToaster"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/CameraActivity;Lcom/android/camera/one/OneCameraCaptureSetting;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/camera/CameraActivity;
    .param p3, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    .line 57
    invoke-virtual {p3}, Lcom/android/camera/one/OneCameraCaptureSetting;->getFlashSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mFlashSetting:Lcom/android/camera/async/Observable;

    .line 58
    invoke-virtual {p3}, Lcom/android/camera/one/OneCameraCaptureSetting;->getHdrSceneSetting()Lcom/android/camera/async/Observable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mHDRSetting:Lcom/android/camera/async/Observable;

    .line 59
    return-void
.end method


# virtual methods
.method public showToastBurstStarted()V
    .locals 8

    .prologue
    const/16 v7, 0x3e8

    .line 62
    iget-object v3, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mHDRSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;

    invoke-virtual {v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$HDR;->encodeSettingsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    new-instance v3, Lcom/android/camera/ui/RotateTextToast;

    iget-object v4, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f08010d

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v3, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mFlashSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    sget-object v4, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    invoke-virtual {v3, v4}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    new-instance v3, Lcom/android/camera/ui/RotateTextToast;

    iget-object v4, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f08010c

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v3, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 68
    .local v2, "mSettingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_manual_exposure_time_key"

    iget-object v5, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f080405

    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "currentExposureValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080404

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 70
    .local v1, "isEtAuto":Z
    if-nez v1, :cond_0

    .line 73
    sget-object v3, Lcom/android/camera/burst/ToastingBurstFacadeDecorator$BurstToaster;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Exposure time with value block burst!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToastBurstStopped()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
