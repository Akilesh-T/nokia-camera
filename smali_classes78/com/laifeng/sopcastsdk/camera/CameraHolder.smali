.class public Lcom/laifeng/sopcastsdk/camera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    }
.end annotation


# static fields
.field private static final FOCUS_HEIGHT:I = 0x50

.field private static final FOCUS_WIDTH:I = 0x50

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static sHolder:Lcom/laifeng/sopcastsdk/camera/CameraHolder;


# instance fields
.field private isOpenBackFirst:Z

.field private isTouchMode:Z

.field private mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

.field private mCameraDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/laifeng/sopcastsdk/camera/CameraData;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

.field private mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

.field private mTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    .line 38
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isOpenBackFirst:Z

    .line 39
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    .line 56
    sget-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->INIT:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    .line 57
    return-void
.end method

.method public static declared-synchronized instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;
    .locals 2

    .prologue
    .line 49
    const-class v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->sHolder:Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    invoke-direct {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;-><init>()V

    sput-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->sHolder:Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    .line 52
    :cond_0
    sget-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->sHolder:Lcom/laifeng/sopcastsdk/camera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cameraZoom(Z)F
    .locals 3
    .param p1, "isBig"    # Z

    .prologue
    .line 254
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    if-nez v1, :cond_1

    .line 255
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    .line 264
    :goto_0
    return v1

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 258
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_2

    .line 259
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 263
    :goto_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 264
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto :goto_1
.end method

.method public changeFocusMode(Z)V
    .locals 2
    .param p1, "touchMode"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iput-boolean p1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    .line 241
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    iput-boolean p1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->touchFocusMode:Z

    .line 242
    if-eqz p1, :cond_2

    .line 243
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setTouchFocusMode(Landroid/hardware/Camera;)V

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setAutoFocusMode(Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public doAutofocus(Landroid/hardware/Camera$AutoFocusCallback;)Z
    .locals 4
    .param p1, "focusCallback"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v3, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 221
    :cond_1
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 222
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 226
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 231
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 232
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 233
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    return-object v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    iget-object v0, v0, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    sget-object v1, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;->PORTRAIT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized openCamera()Landroid/hardware/Camera;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;,
            Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;
        }
    .end annotation

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    iget-boolean v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isOpenBackFirst:Z

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->getAllCamerasData(Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/camera/CameraData;

    .line 77
    .local v0, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    if-ne v2, v0, :cond_2

    .line 78
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-object v2

    .line 80
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->releaseCamera()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_3
    :try_start_2
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v2, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraID:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    :try_start_3
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_4

    .line 91
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    .end local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 86
    .restart local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_4
    const-string v2, "CameraHolder"

    const-string v3, "fail to connect Camera"

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;

    invoke-direct {v2, v1}, Lcom/laifeng/sopcastsdk/camera/exception/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_5
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-boolean v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    iget-object v4, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    invoke-static {v2, v0, v3, v4}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->initCameraParams(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;ZLcom/laifeng/sopcastsdk/configuration/CameraConfiguration;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 101
    :try_start_6
    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    .line 102
    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    .line 103
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 99
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;-><init>()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    .line 183
    iput-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 184
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    .line 185
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isOpenBackFirst:Z

    .line 186
    invoke-static {}, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->createDefault()Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    .line 187
    return-void
.end method

.method public declared-synchronized releaseCamera()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->stopPreview()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_2

    .line 179
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    .line 178
    sget-object v0, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->INIT:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConfiguration(Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iget-object v0, p1, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->focusMode:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    sget-object v3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;->AUTO:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$FocusMode;

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    .line 123
    iget-object v0, p1, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->facing:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    sget-object v3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;->FRONT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Facing;

    if-eq v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isOpenBackFirst:Z

    .line 124
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mConfiguration:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;

    .line 125
    return-void

    :cond_0
    move v0, v2

    .line 122
    goto :goto_0

    :cond_1
    move v1, v2

    .line 123
    goto :goto_1
.end method

.method public setFocusPoint(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v4, -0x3e8

    const/16 v6, 0x3e8

    .line 190
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v3, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    if-lt p1, v4, :cond_2

    if-gt p1, v6, :cond_2

    if-lt p2, v4, :cond_2

    if-le p2, v6, :cond_3

    .line 194
    :cond_2
    const-string v2, "CameraHolder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setFocusPoint: values are not ideal x= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_3
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 199
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_4

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "focusArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, p1, 0x50

    add-int/lit8 v5, p2, 0x50

    invoke-direct {v3, p1, p2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v3, v6}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    goto :goto_0

    .line 212
    .end local v0    # "focusArea":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    :cond_4
    const-string v2, "CameraHolder"

    const-string v3, "Not support Touch focus mode"

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;

    .line 108
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->releaseCamera()V

    goto :goto_0
.end method

.method public declared-synchronized startPreview()V
    .locals 3

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 138
    :try_start_2
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 139
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 140
    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->releaseCamera()V

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopPreview()V
    .locals 3

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v2, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 155
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 156
    .local v0, "cameraParameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 157
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 158
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 161
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 162
    sget-object v1, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->OPENED:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    iput-object v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    .end local v0    # "cameraParameters":Landroid/hardware/Camera$Parameters;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public switchCamera()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v6, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-eq v5, v6, :cond_0

    .line 287
    :goto_0
    return v3

    .line 272
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/camera/CameraData;

    .line 273
    .local v0, "camera":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 274
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->openCamera()Landroid/hardware/Camera;

    .line 275
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 276
    goto :goto_0

    .line 277
    .end local v0    # "camera":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laifeng/sopcastsdk/camera/CameraData;

    .line 279
    .restart local v0    # "camera":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget-object v4, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDatas:Ljava/util/List;

    invoke-interface {v4, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 281
    :try_start_1
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->openCamera()Landroid/hardware/Camera;

    .line 282
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 286
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 283
    :catch_1
    move-exception v2

    .line 284
    .local v2, "e1":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public switchFocusMode()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isTouchMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->changeFocusMode(Z)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public switchLight()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mState:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    sget-object v4, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    if-nez v3, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v2

    .line 295
    :cond_1
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraData:Lcom/laifeng/sopcastsdk/camera/CameraData;

    iget-boolean v3, v3, Lcom/laifeng/sopcastsdk/camera/CameraData;->hasLight:Z

    if-eqz v3, :cond_0

    .line 298
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 299
    .local v0, "cameraParameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    const-string v3, "torch"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 305
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    const/4 v2, 0x1

    goto :goto_0

    .line 302
    :cond_2
    const-string v3, "off"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
