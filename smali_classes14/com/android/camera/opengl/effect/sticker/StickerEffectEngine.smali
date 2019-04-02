.class public Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;
.super Lcom/android/camera/opengl/effect/EffectEngine;
.source "StickerEffectEngine.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mFaceDetectRotation:I

.field private mImageTexture:I

.field private mIsBeautyAllow:Z

.field private mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "StickerEffectEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;IIIIZZI)V
    .locals 13
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isFacingFront"    # Z
    .param p7, "isBeautyAllow"    # Z
    .param p8, "sensorOrientation"    # I

    .prologue
    .line 38
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/opengl/effect/EffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mIsBeautyAllow:Z

    .line 33
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    .line 39
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v1, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandler:Landroid/os/Handler;

    .line 45
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$1;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 53
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mOrientation:I

    .line 54
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mIsBeautyAllow:Z

    .line 56
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    .line 57
    const/16 v1, 0xde1

    iget v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 58
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    iget v4, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHeight:I

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 60
    const/16 v1, 0xde1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 62
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHeight:I

    iget v5, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSensorOrientation:I

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 63
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070014

    invoke-static {v7, v8}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 64
    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070012

    invoke-static {v8, v9}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v8

    .line 62
    invoke-virtual/range {v1 .. v8}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    move-result v11

    .line 66
    .local v11, "resultCode":I
    sget-object v1, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "facepp_life: initFacepp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-boolean v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mIsBeautyAllow:Z

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_sticker_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "value":Ljava/lang/String;
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeChangePackage(Ljava/lang/String;)I

    move-result v10

    .line 78
    .local v10, "code":I
    sget-object v1, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeChangePackage ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mFaceDetectRotation:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mFaceDetectRotation:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSensorOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHeight:I

    return v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
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

    .line 212
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 213
    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    iget-object v6, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 214
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08035f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 213
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 215
    .local v3, "level":I
    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 216
    invoke-static {v3}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v0

    .line 218
    .local v0, "beautyValue":[F
    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 219
    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 221
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 222
    .local v2, "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v9

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 223
    .local v1, "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 229
    .end local v0    # "beautyValue":[F
    .end local v3    # "level":I
    :goto_0
    return-void

    .line 225
    .end local v1    # "brightness_ret":I
    .end local v2    # "deniose_ret":I
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 226
    .restart local v2    # "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 227
    .restart local v1    # "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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


# virtual methods
.method public isNeedFaceData()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 3
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 178
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSensorOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    .line 179
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mFaceDetectRotation:I

    if-ne v0, v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mOrientation:I

    .line 183
    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mFaceDetectRotation:I

    goto :goto_0
.end method

.method public onPreviewFrame([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$2;-><init>(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;[B)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
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
    .line 108
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 190
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 191
    const-string v2, "pref_camera_sticker_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    const-string v2, "default_scope"

    invoke-virtual {p1, v2, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "value":Ljava/lang/String;
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeDisablePackage()I

    move-result v0

    .line 196
    .local v0, "code":I
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeDisablePackage fail, code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 204
    .end local v0    # "code":I
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "pref_beauty_level_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "pref_beauty"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mIsBeautyAllow:Z

    if-eqz v2, :cond_2

    .line 205
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 208
    :cond_2
    monitor-exit v3

    .line 209
    return-void

    .line 199
    .restart local v1    # "value":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeChangePackage(Ljava/lang/String;)I

    move-result v0

    .line 200
    .restart local v0    # "code":I
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nativeChangePackage fail, code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    .end local v0    # "code":I
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
    .line 112
    iget-object v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v2, p1}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->onDrawToTexture(I)I

    move-result v1

    .line 115
    .local v1, "textureID":I
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSurfaceWidth:I

    iget v6, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSurfaceHeight:I

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 116
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    invoke-virtual {v2, v1, v4}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessTexture(II)I

    move-result v0

    .line 117
    .local v0, "result":I
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTexture(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    :cond_0
    const v2, 0x8d40

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 119
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSurfaceWidth:I

    iget v6, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mSurfaceHeight:I

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 120
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 121
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 123
    .end local v0    # "result":I
    .end local v1    # "textureID":I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    return v2

    .line 123
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 129
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 130
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v3, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 131
    :try_start_0
    const-string v2, "sync mRelease done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    const-string v2, "not stop before, stop it"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$3;

    invoke-direct {v4, p0}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine$3;-><init>(Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 141
    const-string v2, "schedule runnable done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    move-result v0

    .line 144
    .local v0, "code":I
    const-string v2, "BeaurifyJniSdk release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 145
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 146
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    .line 148
    iget v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    if-eq v2, v6, :cond_1

    .line 149
    iget v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 150
    const-string v2, "delete Texture done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 151
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mImageTexture:I

    .line 152
    const-string v2, "clear mImageTexture ref"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    if-eqz v2, :cond_2

    .line 156
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->destroyFramebuffers()V

    .line 157
    const-string v2, "mCameraMatrix.destroyFramebuffers"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 158
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->destroy()V

    .line 159
    const-string v2, "mCameraMatrix.destroy"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 163
    const-string v2, "removeCallbacksAndMessages"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->waitDone(Landroid/os/Handler;)Z

    .line 165
    const-string v2, "waitDone OK"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 167
    const-string v2, "quitSafely OK"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 168
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandler:Landroid/os/Handler;

    .line 169
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 170
    const-string v2, "reset done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 172
    .end local v0    # "code":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
