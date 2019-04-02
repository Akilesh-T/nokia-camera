.class public Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;
.source "QCOneCameraCharExtension.java"


# static fields
.field private static final METHOD_GET_NUM_MIC:Ljava/lang/String; = "getCustomNumMic"

.field private static final METHOD_GET_OZO_DEVICE_ID:Ljava/lang/String; = "getCustomOzoDeviceID"

.field private static final METHOD_GET_OZO_LIST:Ljava/lang/String; = "getCustomOzoFuncList"

.field private static final METHOD_SET_OZO:Ljava/lang/String; = "setOzoAudioMode"

.field private static final METHOD_SET_OZO_DYNAMIC_MODE:Ljava/lang/String; = "setOzoDynamicFocusMode"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/OneCameraCharExtension;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;Landroid/media/MediaRecorder;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;
    .param p1, "x1"    # Landroid/media/MediaRecorder;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->setSurroundSoundMode(Landroid/media/MediaRecorder;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private setCustomNumMic(Landroid/media/MediaRecorder;)Z
    .locals 6
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 203
    :try_start_0
    const-class v3, Landroid/media/AudioManager;

    const-string v4, "getCustomNumMic"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 204
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 205
    .local v2, "numMic":I
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numMic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1, v2}, Landroid/media/MediaRecorder;->setAudioChannels(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v3, 0x1

    .line 213
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "numMic":I
    :goto_0
    return v3

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setCustomNumMic error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 213
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setSurroundSoundMode(Landroid/media/MediaRecorder;IZ)Z
    .locals 9
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ozoMode"    # I
    .param p3, "isDynamic"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setOzoMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isDynamic = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    :try_start_0
    const-class v5, Landroid/media/MediaRecorder;

    if-eqz p3, :cond_0

    const-string v4, "setOzoDynamicFocusMode"

    :goto_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 192
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return v2

    .line 191
    :cond_0
    const-string v4, "setOzoAudioMode"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setSurroundSoundMode error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 198
    goto :goto_1
.end method


# virtual methods
.method public configSurroundSoundForMediaRecorder(Landroid/content/Context;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCamera$Facing;Landroid/media/MediaRecorder;Lcom/android/camera/async/Observable;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "facing"    # Lcom/android/camera/one/OneCamera$Facing;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "recorder"    # Landroid/media/MediaRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/camera/async/Observable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/OneCamera$Facing;",
            "Landroid/media/MediaRecorder;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p5, "surroundSoundSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;>;"
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne p3, v3, :cond_2

    sget-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    .line 123
    .local v0, "cameraFacing":Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    :goto_0
    invoke-interface {p5}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;

    invoke-virtual {v3}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$SurroundSound;->encodeSettingsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v0, p6}, Lcom/android/camera/one/OZOModeSelector;->getOZOMode(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p4, v3, v4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->setSurroundSoundMode(Landroid/media/MediaRecorder;IZ)Z

    move-result v1

    .line 125
    .local v1, "config":Z
    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0, p4}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->setCustomNumMic(Landroid/media/MediaRecorder;)Z

    move-result v1

    .line 129
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    .line 130
    new-instance v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;

    invoke-direct {v3, p0, p4, p1, p5}, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension$1;-><init>(Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;Landroid/media/MediaRecorder;Landroid/content/Context;Lcom/android/camera/async/Observable;)V

    .line 136
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v4

    .line 130
    invoke-interface {p5, v3, v4}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v2

    .line 137
    .local v2, "surroundSoundCallback":Lcom/android/camera/async/SafeCloseable;
    invoke-virtual {p2, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 140
    .end local v2    # "surroundSoundCallback":Lcom/android/camera/async/SafeCloseable;
    :cond_1
    return v1

    .line 122
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    .end local v1    # "config":Z
    :cond_2
    sget-object v0, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    goto :goto_0
.end method

.method public configureInputStream()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public getCalibrationData()[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->ArcSoftCalibMetaDataBlobKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 70
    :goto_0
    return-object v0

    .line 66
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->ArcSoftCalibMetaDataBlobKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .local v0, "calibData":[B
    goto :goto_0

    .line 68
    .end local v0    # "calibData":[B
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 70
    goto :goto_0
.end method

.method public getCustomNumMic()I
    .locals 6

    .prologue
    .line 219
    :try_start_0
    const-class v3, Landroid/media/AudioManager;

    const-string v4, "getCustomNumMic"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 220
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 221
    .local v2, "numMic":I
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "numMic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "numMic":I
    :goto_0
    return v2

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " setCustomNumMic error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomOzoDeviceID()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 97
    :try_start_0
    const-class v2, Landroid/media/AudioManager;

    const-string v4, "getCustomOzoDeviceID"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "involke METHOD_GET_OZO_DEVICE_ID error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v3

    .line 102
    goto :goto_0
.end method

.method public getDualCamLayout()Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;
    .locals 2

    .prologue
    .line 76
    sget-object v1, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->HORIZONTAL_SLAVE_MAIN:Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->getLayoutOrentation()I

    move-result v0

    .line 77
    .local v0, "layoutOrentation":I
    invoke-static {v0}, Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;->fromLayoutOrentation(I)Lcom/android/camera/one/OneCameraCharacteristics$DualCamLayout;

    move-result-object v1

    return-object v1
.end method

.method public getFakeQCFAPictureSize()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v1, "fakeQCFAPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->QcfaSensorSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 174
    .local v3, "qcfaSensorSize":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 175
    new-instance v4, Landroid/util/Size;

    aget v5, v3, v2

    add-int/lit8 v6, v2, 0x1

    aget v6, v3, v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 177
    .end local v2    # "i":I
    .end local v3    # "qcfaSensorSize":[I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFakeQCFAPictureSize fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public getSensorExposureTimeRange()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->ExpRange:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 147
    .local v1, "exposureRange":[J
    if-eqz v1, :cond_0

    .line 148
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    .end local v1    # "exposureRange":[J
    :goto_0
    return-object v2

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Supported exposure range modes is null."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Supported exposure range modes is null."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSupportedSurroundSound()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "supportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-class v5, Landroid/media/AudioManager;

    const-string v6, "getCustomOzoFuncList"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 110
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 111
    .local v4, "values":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 112
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 117
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "involke METHOD_GET_OZO_LIST error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAutoHdrSupported()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public isFrontCamMirrorSupported()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isMonoCamera()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 58
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->MetaDataMonoOnlyKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 59
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 58
    :goto_0
    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQCFASensor()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->QcfaSensorKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCCameraCharacteristics;->QcfaSensorKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 162
    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 166
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 162
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read QCFA info fail : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v1, v3

    .line 166
    goto :goto_0
.end method

.method public isSupportedSurroundSound()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 83
    :try_start_0
    const-class v4, Landroid/media/AudioManager;

    const-string v6, "getCustomOzoFuncList"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 84
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 85
    .local v3, "values":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 86
    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    .line 91
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "values":[Ljava/lang/String;
    :goto_0
    return v4

    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_0
    move v4, v5

    .line 86
    goto :goto_0

    .line 88
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "values":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/camera/one/v2/photo/extension/qualcomm/QCOneCameraCharExtension;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "involke METHOD_GET_OZO_LIST error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v4, v5

    .line 91
    goto :goto_0
.end method
