.class public Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;
.super Lcom/android/camera/opengl/effect/EffectEngine;
.source "LightenEffectEngine.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mApi:Lcom/megvii/humansdk/HumanEffectApi;

.field private mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

.field private mFaceDetectRotation:I

.field private mImageTexture:I

.field private mImageTexture2:I

.field private mIsBeautyAllow:Z

.field private mIsConfigUpdated:Z

.field private mIsDetected:Z

.field private mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LightenEffectEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;IIIIZZI)V
    .locals 12
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isFacingFront"    # Z
    .param p7, "isBeautyAllow"    # Z
    .param p8, "sensorOrientation"    # I

    .prologue
    .line 42
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/opengl/effect/EffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    .line 29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsDetected:Z

    .line 30
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsConfigUpdated:Z

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsBeautyAllow:Z

    .line 36
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    .line 43
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mOrientation:I

    .line 45
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$1;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 52
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsBeautyAllow:Z

    .line 54
    new-instance v1, Lcom/megvii/humansdk/HumanEffectApi;

    invoke-direct {v1}, Lcom/megvii/humansdk/HumanEffectApi;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    .line 55
    new-instance v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    invoke-direct {v1}, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    .line 56
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    const/4 v2, 0x0

    iput v2, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    .line 57
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    new-instance v2, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    invoke-direct {v2}, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;-><init>()V

    iput-object v2, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    .line 58
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->supportFloatTexture()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 59
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v2, 0x1

    iput v2, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v2, 0x0

    iput v2, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->type:I

    .line 64
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070016

    invoke-static {v2, v3}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v2

    iput-object v2, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    .line 65
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    move/from16 v0, p4

    iput v0, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageWidth:I

    .line 66
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    move/from16 v0, p5

    iput v0, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageHeight:I

    .line 68
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 69
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 70
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandler:Landroid/os/Handler;

    .line 72
    iget v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 73
    iget v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 75
    :cond_0
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    .line 76
    const/16 v1, 0xde1

    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 77
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 79
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07000e

    invoke-static {v2, v3}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    iget v6, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mOrientation:I

    iget v7, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    .line 82
    invoke-static {v6, v7}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v6

    .line 81
    invoke-virtual/range {v1 .. v6}, Lcom/megvii/humansdk/HumanEffectApi;->init([BLcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;III)Z

    move-result v11

    .line 83
    .local v11, "success":Z
    if-eqz v11, :cond_1

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsConfigUpdated:Z

    .line 86
    :cond_1
    iget v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 87
    iget v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 89
    :cond_2
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    .line 90
    const/16 v1, 0xde1

    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 91
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 93
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 94
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    iget v5, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 95
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070014

    invoke-static {v7, v8}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 96
    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070012

    invoke-static {v8, v9}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v8

    .line 94
    invoke-virtual/range {v1 .. v8}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    move-result v10

    .line 98
    .local v10, "resultCode":I
    sget-object v1, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facepp_life: initFacepp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    iget-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsBeautyAllow:Z

    if-eqz v1, :cond_3

    .line 100
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 102
    :cond_3
    return-void

    .line 61
    .end local v10    # "resultCode":I
    .end local v11    # "success":Z
    :cond_4
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v1, v1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v2, 0x0

    iput v2, v1, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    return v0
.end method

.method static synthetic access$1200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)Lcom/megvii/humansdk/HumanEffectApi;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsDetected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mFaceDetectRotation:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mFaceDetectRotation:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    return v0
.end method

.method private setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V
    .locals 12
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 259
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    iget-object v6, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 261
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08035f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 260
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 262
    .local v3, "level":I
    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beauty level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    invoke-static {v3}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v0

    .line 265
    .local v0, "beautyValue":[F
    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDenioseLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 266
    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBrightnessLevel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 269
    .local v2, "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v9

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 270
    .local v1, "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beautyEffectResult : deniose_ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", brightness_ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    .end local v0    # "beautyValue":[F
    .end local v3    # "level":I
    :goto_0
    return-void

    .line 272
    .end local v1    # "brightness_ret":I
    .end local v2    # "deniose_ret":I
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 273
    .restart local v2    # "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 274
    .restart local v1    # "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beautyEffectResult : deniose_ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", brightness_ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateConfig()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 154
    iget-boolean v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsConfigUpdated:Z

    if-eqz v1, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    invoke-virtual {v1, v2}, Lcom/megvii/humansdk/HumanEffectApi;->setConfig(Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;)I

    .line 158
    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsConfigUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public isNeedFaceData()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 3
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 211
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    .line 213
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mFaceDetectRotation:I

    if-ne v0, v1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mOrientation:I

    .line 217
    iput v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mFaceDetectRotation:I

    goto :goto_0
.end method

.method public onPreviewFrame([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsDetected:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsDetected:Z

    .line 117
    iget-object v0, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$2;-><init>(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;[B)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPreviewStop()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 5
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    const-string v2, "pref_camera_portrait_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    const-string v2, "default_scope"

    invoke-virtual {p1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "value":Ljava/lang/String;
    const/4 v0, 0x0

    .line 229
    .local v0, "type":I
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803b0

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    const/4 v0, 0x0

    .line 247
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mConfig:Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    iget-object v2, v2, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iput v0, v2, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->type:I

    .line 248
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsConfigUpdated:Z

    .line 251
    .end local v0    # "type":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "pref_beauty_level_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "pref_beauty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mIsBeautyAllow:Z

    if-eqz v2, :cond_3

    .line 252
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 255
    :cond_3
    monitor-exit v3

    .line 256
    return-void

    .line 231
    .restart local v0    # "type":I
    .restart local v1    # "value":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803a3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 233
    :cond_5
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803ae

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 234
    const/4 v0, 0x2

    goto :goto_0

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803a1

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 236
    const/4 v0, 0x3

    goto :goto_0

    .line 237
    :cond_7
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 238
    const/4 v0, 0x4

    goto :goto_0

    .line 239
    :cond_8
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803a7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 240
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 241
    :cond_9
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803aa

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 242
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 243
    :cond_a
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0803a5

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const/16 v0, 0x69

    goto/16 :goto_0

    .line 255
    .end local v0    # "type":I
    .end local v1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public process(I[F)I
    .locals 7
    .param p1, "srcTextureId"    # I
    .param p2, "stMatrix"    # [F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->updateConfig()Z

    .line 141
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSensorOrientation:I

    invoke-virtual {v2, p1, v3, v4}, Lcom/megvii/humansdk/HumanEffectApi;->process(III)I

    move-result v0

    .line 143
    .local v0, "result":I
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSurfaceHeight:I

    invoke-static {v5, v5, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 144
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    iget v4, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    invoke-virtual {v2, v3, v4}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessTexture(II)I

    move-result v1

    .line 145
    .local v1, "result2":I
    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processTexture(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    :cond_0
    const v2, 0x8d40

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 147
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSurfaceWidth:I

    iget v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mSurfaceHeight:I

    invoke-static {v5, v5, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 148
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 149
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 150
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    return v2
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 164
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 165
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v3, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 166
    :try_start_0
    const-string v2, "sync mRelease done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 168
    const-string v2, "not stop before, stop it"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$3;

    invoke-direct {v4, p0}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine$3;-><init>(Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 176
    const-string v2, "schedule runnable done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 178
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    if-eq v2, v6, :cond_0

    .line 179
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 180
    const-string v2, "delete mImageTexture done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 182
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture:I

    .line 183
    const-string v2, "clear mImageTexture ref"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    move-result v0

    .line 186
    .local v0, "code":I
    const-string v2, "BeaurifyJniSdk release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 187
    if-eqz v0, :cond_1

    sget-object v2, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "facepp_life: releaseResources(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    .line 189
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    if-eq v2, v6, :cond_2

    .line 190
    iget v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 191
    const-string v2, "delete mImageTexture2 done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 193
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mImageTexture2:I

    .line 194
    const-string v2, "clear mImageTexture2 ref"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mApi:Lcom/megvii/humansdk/HumanEffectApi;

    invoke-virtual {v2}, Lcom/megvii/humansdk/HumanEffectApi;->release()I

    .line 198
    const-string v2, "mApi.release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4

    .line 201
    iget-object v2, p0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    const-string v2, "mHandlerThread.quit"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 205
    .end local v0    # "code":I
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 207
    return-void

    .line 205
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
