.class public Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;
.super Lcom/android/camera/opengl/effect/EffectEngine;
.source "AnimojiEffectEngine.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private bgMatrix:Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;

.field private mApi:Lcom/megvii/animojisdk/AnimojiApi;

.field private mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

.field private mImageTexture:I

.field private mIsConfigUpdated:Z

.field private mIsDetected:Z

.field private mNnpData:[F

.field private mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AnimojiEffectEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;IIIIZI)V
    .locals 14
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isFacingFront"    # Z
    .param p7, "sensorOrientation"    # I

    .prologue
    .line 40
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/opengl/effect/EffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    .line 28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsDetected:Z

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    .line 34
    const/16 v1, 0x8

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mNnpData:[F

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    .line 41
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mOrientation:I

    .line 43
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$1;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 51
    new-instance v1, Lcom/megvii/animojisdk/AnimojiApi;

    invoke-direct {v1}, Lcom/megvii/animojisdk/AnimojiApi;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    .line 52
    new-instance v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    invoke-direct {v1}, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    .line 53
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    move/from16 v0, p4

    iput v0, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageWidth:I

    .line 54
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    move/from16 v0, p5

    iput v0, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageHeight:I

    .line 55
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    const/4 v2, 0x1

    iput v2, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->renderType:I

    .line 56
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    const/4 v2, 0x2

    iput v2, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->multiSample:I

    .line 58
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    iget v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mOrientation:I

    iget v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSensorOrientation:I

    invoke-static {v2, v3}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v2

    iput v2, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    .line 60
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 61
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 62
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandler:Landroid/os/Handler;

    .line 64
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 67
    :cond_0
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    .line 68
    const/16 v1, 0xde1

    iget v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 69
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 71
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 74
    new-instance v1, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f02006c

    invoke-direct {v1, v2, v3}, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->bgMatrix:Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;

    .line 76
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_animoji_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 77
    .local v13, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, "resStr":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v10, "resPath":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    invoke-static {v11}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070001

    invoke-static {v1, v3}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    if-eqz p6, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/megvii/animojisdk/AnimojiApi;->init([BLcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;I)Z

    move-result v12

    .line 90
    .local v12, "success":Z
    if-eqz v12, :cond_1

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    .line 93
    :cond_1
    return-void

    .line 86
    .end local v12    # "success":Z
    :cond_2
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070002

    invoke-static {v2, v3}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    goto :goto_0

    .line 89
    :cond_3
    const/16 v1, 0xb4

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSensorOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/megvii/animojisdk/AnimojiApi;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsDetected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method private updateConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 143
    iget-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    invoke-virtual {v1, v2}, Lcom/megvii/animojisdk/AnimojiApi;->setConfig(Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;)I

    .line 147
    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public isNeedFaceData()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 3
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 189
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSensorOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    .line 190
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    iget v1, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    if-ne v0, v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    iput v0, v1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    .line 194
    iget-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    invoke-virtual {v1, v2}, Lcom/megvii/animojisdk/AnimojiApi;->updateOrientation(Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;)I

    goto :goto_0
.end method

.method public onPreviewFrame([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsDetected:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsDetected:Z

    .line 106
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$2;-><init>(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPreviewStop()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 202
    iget-object v4, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 203
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    const-string v3, "pref_camera_animoji_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    const-string v3, "default_scope"

    invoke-virtual {p1, v3, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sAnimojiDownloadPath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "resStr":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "resPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mConfig:Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    invoke-static {v1}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v3, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    .line 214
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mIsConfigUpdated:Z

    .line 218
    .end local v0    # "resPath":Ljava/io/File;
    .end local v1    # "resStr":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v4

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public process(I[F)I
    .locals 7
    .param p1, "srcTextureId"    # I
    .param p2, "stMatrix"    # [F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->updateConfig()Z

    .line 123
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    iget v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    iget v3, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSensorOrientation:I

    iget-object v4, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mNnpData:[F

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/megvii/animojisdk/AnimojiApi;->process(III[F)I

    move-result v0

    .line 124
    .local v0, "result":I
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSurfaceWidth:I

    iget v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mSurfaceHeight:I

    invoke-static {v6, v6, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 125
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 126
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 127
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    return v1
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 153
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 154
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 155
    :try_start_0
    const-string v1, "sync mRelease done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    const-string v1, "not stop before, stop it"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;

    invoke-direct {v3, p0}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine$3;-><init>(Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 165
    const-string v1, "schedule runnable done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 167
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    if-eq v1, v4, :cond_0

    .line 168
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 169
    const-string v1, "delete Texture done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 171
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mImageTexture:I

    .line 172
    const-string v1, "clear mImageTexture ref"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mApi:Lcom/megvii/animojisdk/AnimojiApi;

    invoke-virtual {v1}, Lcom/megvii/animojisdk/AnimojiApi;->release()I

    .line 176
    const-string v1, "mApi.release"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 180
    const-string v1, "mHandlerThread.quit"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 183
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updateBuffer(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->bgMatrix:Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;->bgMatrix:Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;

    invoke-virtual {v0, p1}, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->draw(Ljava/nio/FloatBuffer;)I

    .line 140
    :cond_0
    return-void
.end method
