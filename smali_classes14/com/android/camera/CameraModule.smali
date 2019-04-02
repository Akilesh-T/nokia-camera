.class public abstract Lcom/android/camera/CameraModule;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final mCameraProvider:Lcom/android/camera/app/CameraProvider;

.field private final mServices:Lcom/android/camera/app/CameraServices;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraModule;->mServices:Lcom/android/camera/app/CameraServices;

    .line 40
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    .line 41
    return-void
.end method


# virtual methods
.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method protected getCameraProvider()Lcom/android/camera/app/CameraProvider;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    return-object v0
.end method

.method public abstract getPeekAccessibilityString()Ljava/lang/String;
.end method

.method protected getServices()Lcom/android/camera/app/CameraServices;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/camera/CameraModule;->mServices:Lcom/android/camera/app/CameraServices;

    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleKeyDownEventForVolumeKey(Landroid/view/KeyEvent;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "mActivity"    # Lcom/android/camera/CameraActivity;
    .param p3, "mAppController"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x1

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 94
    invoke-interface {p3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {p3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    .line 101
    :cond_0
    return v1
.end method

.method protected handleKeyLongPressForBurstShot(IZLcom/android/camera/one/OneCamera;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Lcom/android/camera/burst/BurstFacade;Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "isUICountingDown"    # Z
    .param p3, "mCamera"    # Lcom/android/camera/one/OneCamera;
    .param p4, "mActivity"    # Lcom/android/camera/CameraActivity;
    .param p5, "mAppController"    # Lcom/android/camera/app/AppController;
    .param p6, "mBurstController"    # Lcom/android/camera/burst/BurstFacade;
    .param p7, "cancelCoundownRunner"    # Ljava/lang/Runnable;

    .prologue
    const/4 v0, 0x1

    .line 60
    if-nez p3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    if-eqz p6, :cond_2

    invoke-interface {p6}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    invoke-virtual {p4}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p5, :cond_0

    .line 73
    invoke-interface {p5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-interface {p5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    if-eqz p2, :cond_3

    .line 76
    invoke-interface {p7}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 78
    :cond_3
    if-eqz p5, :cond_4

    .line 79
    invoke-interface {p5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 80
    invoke-interface {p5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 82
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/CameraModule;->onShutterButtonLongPressed()V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyModeListState(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 182
    return-void
.end method

.method public notifySwipeStateChanged(I)V
    .locals 0
    .param p1, "swipeState"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public onFirstPreviewArrived()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public onPreviewInitialDataReceived()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onPreviewVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 223
    return-void
.end method

.method public onSessionDone()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onSessionPictureDataUpdate([BI)V
    .locals 0
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I

    .prologue
    .line 228
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method protected releaseBackCamera()V
    .locals 2

    .prologue
    .line 153
    iget-object v1, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v0

    .line 154
    .local v0, "backCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v1, v0}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 157
    :cond_0
    return-void
.end method

.method protected requestBackCamera()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v0

    .line 139
    .local v0, "backCameraId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/camera/CameraModule;->mCameraProvider:Lcom/android/camera/app/CameraProvider;

    invoke-interface {v1, v0}, Lcom/android/camera/app/CameraProvider;->requestCamera(I)V

    .line 142
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 180
    return-void
.end method

.method protected useLogicCamera(Lcom/android/camera/app/AppController;)Z
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method
