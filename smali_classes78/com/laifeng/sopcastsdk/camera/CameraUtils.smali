.class public Lcom/laifeng/sopcastsdk/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adaptPreviewFps(ILjava/util/List;)[I
    .locals 9
    .param p0, "expectedFps"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .local p1, "fpsRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 106
    mul-int/lit16 p0, p0, 0x3e8

    .line 107
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 108
    .local v0, "closestRange":[I
    aget v4, v0, v7

    sub-int/2addr v4, p0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    aget v5, v0, v8

    sub-int/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v2, v4, v5

    .line 109
    .local v2, "measure":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 110
    .local v3, "range":[I
    aget v5, v3, v7

    if-gt v5, p0, :cond_0

    aget v5, v3, v8

    if-lt v5, p0, :cond_0

    .line 111
    aget v5, v3, v7

    sub-int/2addr v5, p0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    aget v6, v3, v8

    sub-int/2addr v6, p0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int v1, v5, v6

    .line 112
    .local v1, "curMeasure":I
    if-ge v1, v2, :cond_0

    .line 113
    move-object v0, v3

    .line 114
    move v2, v1

    goto :goto_0

    .line 118
    .end local v1    # "curMeasure":I
    .end local v3    # "range":[I
    :cond_1
    return-object v0
.end method

.method public static checkCameraService(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;,
            Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;
        }
    .end annotation

    .prologue
    .line 242
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 244
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/camera/exception/CameraDisabledException;-><init>()V

    throw v2

    .line 247
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->getAllCamerasData(Z)Ljava/util/List;

    move-result-object v0

    .line 248
    .local v0, "cameraDatas":Ljava/util/List;, "Ljava/util/List<Lcom/laifeng/sopcastsdk/camera/CameraData;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 249
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/camera/exception/NoCameraException;-><init>()V

    throw v2

    .line 251
    :cond_1
    return-void
.end method

.method public static getAllCamerasData(Z)Ljava/util/List;
    .locals 8
    .param p0, "isBackFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/laifeng/sopcastsdk/camera/CameraData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v1, "cameraDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/laifeng/sopcastsdk/camera/CameraData;>;"
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 36
    .local v2, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    .line 37
    .local v4, "numberOfCameras":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 38
    invoke-static {v3, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 39
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v7, :cond_2

    .line 40
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraData;

    invoke-direct {v0, v3, v7}, Lcom/laifeng/sopcastsdk/camera/CameraData;-><init>(II)V

    .line 41
    .local v0, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .end local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    .restart local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 46
    .end local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :cond_2
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_0

    .line 47
    new-instance v0, Lcom/laifeng/sopcastsdk/camera/CameraData;

    const/4 v5, 0x2

    invoke-direct {v0, v3, v5}, Lcom/laifeng/sopcastsdk/camera/CameraData;-><init>(II)V

    .line 48
    .restart local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {v1, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 55
    .end local v0    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :cond_4
    return-object v1
.end method

.method public static getDisplayOrientation(I)I
    .locals 4
    .param p0, "cameraId"    # I

    .prologue
    .line 227
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 228
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 230
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 231
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v1, v2, 0x168

    .line 232
    .local v1, "result":I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 236
    :goto_0
    return v1

    .line 234
    .end local v1    # "result":I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1    # "result":I
    goto :goto_0
.end method

.method public static getOptimalPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;
    .locals 10
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 205
    .local v0, "minHeightDiff":D
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 206
    .local v2, "minWidthDiff":D
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 207
    .local v6, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez v6, :cond_0

    const/4 v7, 0x0

    .line 223
    :goto_0
    return-object v7

    .line 209
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 210
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v2

    if-gez v8, :cond_1

    .line 211
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v2, v8

    goto :goto_1

    .line 215
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 216
    .restart local v5    # "size":Landroid/hardware/Camera$Size;
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, p1

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpl-double v8, v8, v2

    if-nez v8, :cond_3

    .line 217
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v8, v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_3

    .line 218
    move-object v4, v5

    .line 219
    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-double v0, v8

    goto :goto_2

    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_4
    move-object v7, v4

    .line 223
    goto :goto_0
.end method

.method public static initCameraParams(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;ZLcom/laifeng/sopcastsdk/configuration/CameraConfiguration;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraData"    # Lcom/laifeng/sopcastsdk/camera/CameraData;
    .param p2, "isTouchMode"    # Z
    .param p3, "configuration"    # Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v4, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->orientation:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    sget-object v5, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;->PORTRAIT:Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration$Orientation;

    if-eq v4, v5, :cond_0

    const/4 v2, 0x1

    .line 61
    .local v2, "isLandscape":Z
    :goto_0
    iget v4, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->height:I

    iget v5, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 62
    .local v1, "cameraWidth":I
    iget v4, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->height:I

    iget v5, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->width:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 63
    .local v0, "cameraHeight":I
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 64
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-static {p0, v3}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setPreviewFormat(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 65
    iget v4, p3, Lcom/laifeng/sopcastsdk/configuration/CameraConfiguration;->fps:I

    invoke-static {p0, v4, v3}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setPreviewFps(Landroid/hardware/Camera;ILandroid/hardware/Camera$Parameters;)V

    .line 66
    invoke-static {p0, p1, v1, v0, v3}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setPreviewSize(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;IILandroid/hardware/Camera$Parameters;)V

    .line 67
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->supportFlash(Landroid/hardware/Camera;)Z

    move-result v4

    iput-boolean v4, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->hasLight:Z

    .line 68
    invoke-static {p1, v2, p0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setOrientation(Lcom/laifeng/sopcastsdk/camera/CameraData;ZLandroid/hardware/Camera;)V

    .line 69
    invoke-static {p0, p1, p2}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setFocusMode(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;Z)V

    .line 70
    return-void

    .line 60
    .end local v0    # "cameraHeight":I
    .end local v1    # "cameraWidth":I
    .end local v2    # "isLandscape":Z
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAutoFocusMode(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 172
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 173
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "continuous-picture"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    const-string v3, "continuous-picture"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 183
    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 177
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static setFocusMode(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;Z)V
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraData"    # Lcom/laifeng/sopcastsdk/camera/CameraData;
    .param p2, "isTouchMode"    # Z

    .prologue
    .line 149
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->supportTouchFocus(Landroid/hardware/Camera;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->supportTouchFocus:Z

    .line 150
    iget-boolean v0, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->supportTouchFocus:Z

    if-nez v0, :cond_0

    .line 151
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setAutoFocusMode(Landroid/hardware/Camera;)V

    .line 160
    :goto_0
    return-void

    .line 153
    :cond_0
    if-nez p2, :cond_1

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->touchFocusMode:Z

    .line 155
    invoke-static {p0}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->setAutoFocusMode(Landroid/hardware/Camera;)V

    goto :goto_0

    .line 157
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->touchFocusMode:Z

    goto :goto_0
.end method

.method private static setOrientation(Lcom/laifeng/sopcastsdk/camera/CameraData;ZLandroid/hardware/Camera;)V
    .locals 2
    .param p0, "cameraData"    # Lcom/laifeng/sopcastsdk/camera/CameraData;
    .param p1, "isLandscape"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 141
    iget v1, p0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraID:I

    invoke-static {v1}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->getDisplayOrientation(I)I

    move-result v0

    .line 142
    .local v0, "orientation":I
    if-eqz p1, :cond_0

    .line 143
    add-int/lit8 v0, v0, -0x5a

    .line 145
    :cond_0
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 146
    return-void
.end method

.method public static setPreviewFormat(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v1, 0x11

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 76
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;

    invoke-direct {v1}, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;-><init>()V

    throw v1
.end method

.method public static setPreviewFps(Landroid/hardware/Camera;ILandroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "fps"    # I
    .param p2, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 84
    invoke-static {}, Lcom/laifeng/sopcastsdk/blacklist/BlackListHelper;->deviceInFpsBlacklisted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    const-string v2, "SopCast"

    const-string v3, "Device in fps setting black list, so set the camera fps 15"

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/16 p1, 0xf

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 90
    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->adaptPreviewFps(ILjava/util/List;)[I

    move-result-object v1

    .line 98
    .local v1, "range":[I
    const/4 v2, 0x0

    :try_start_1
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {p2, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 99
    invoke-virtual {p0, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :goto_1
    return-void

    .line 91
    .end local v1    # "range":[I
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "range":[I
    :catch_1
    move-exception v0

    .line 101
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setPreviewSize(Landroid/hardware/Camera;Lcom/laifeng/sopcastsdk/camera/CameraData;IILandroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraData"    # Lcom/laifeng/sopcastsdk/camera/CameraData;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "parameters"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p0, p2, p3}, Lcom/laifeng/sopcastsdk/camera/CameraUtils;->getOptimalPreviewSize(Landroid/hardware/Camera;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 124
    .local v1, "size":Landroid/hardware/Camera$Size;
    if-nez v1, :cond_0

    .line 125
    new-instance v2, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;

    invoke-direct {v2}, Lcom/laifeng/sopcastsdk/camera/exception/CameraNotSupportException;-><init>()V

    throw v2

    .line 127
    :cond_0
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iput v2, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 128
    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    iput v2, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 131
    const-string v2, "SopCast"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera Width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    Height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    iget v2, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    iget v3, p1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    invoke-virtual {p4, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 134
    invoke-virtual {p0, p4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTouchFocusMode(Landroid/hardware/Camera;)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 188
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "auto"

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    const-string v3, "auto"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 199
    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 193
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    .end local v1    # "focusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static supportFlash(Landroid/hardware/Camera;)Z
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x0

    .line 254
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 255
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "flashModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return v3

    .line 259
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    .local v0, "flashMode":Ljava/lang/String;
    const-string v5, "torch"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static supportTouchFocus(Landroid/hardware/Camera;)Z
    .locals 2
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p0, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 166
    :cond_0
    return v0
.end method
