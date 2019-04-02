.class public Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;
.super Lcom/android/camera/opengl/effect/EffectEngine;
.source "BeautyEffectEngine.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private isNeedDefaultBeauty:Z

.field private mFaceDetectRotation:I

.field private mImageTexture:I

.field private mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyEffectEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;IIIIZI)V
    .locals 10
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "surfaceWidth"    # I
    .param p3, "surfaceHeight"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "isFacingFront"    # Z
    .param p7, "sensorOrientation"    # I

    .prologue
    .line 38
    invoke-direct/range {p0 .. p7}, Lcom/android/camera/opengl/effect/EffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->isNeedDefaultBeauty:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;

    invoke-direct {v1, p0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 47
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mOrientation:I

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    .line 54
    const/16 v0, 0xde1

    iget v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHeight:I

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 57
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 59
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mWidth:I

    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHeight:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSensorOrientation:I

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 61
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070014

    invoke-static {v6, v7}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 62
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070012

    invoke-static {v7, v8}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v7

    .line 59
    invoke-virtual/range {v0 .. v7}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    move-result v9

    .line 65
    .local v9, "resultCode":I
    sget-object v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facepp_life: initFacepp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mFaceDetectRotation:I

    return v0
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 230
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    const-string v4, "default_scope"

    const-string v5, "pref_beauty_level_key"

    iget-object v6, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    .line 232
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f08035f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 231
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v3

    .line 233
    .local v3, "level":I
    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 234
    invoke-static {v3}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v0

    .line 236
    .local v0, "beautyValue":[F
    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 237
    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 239
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 240
    .local v2, "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    aget v5, v0, v9

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 241
    .local v1, "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 247
    .end local v0    # "beautyValue":[F
    .end local v3    # "level":I
    :goto_0
    return-void

    .line 243
    .end local v1    # "brightness_ret":I
    .end local v2    # "deniose_ret":I
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v11, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v2

    .line 244
    .restart local v2    # "deniose_ret":I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v10, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    move-result v1

    .line 245
    .restart local v1    # "brightness_ret":I
    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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
.method public detectFace(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "YBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "UBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "VBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 97
    iget-object v7, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mOrientation:I

    iget v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSensorOrientation:I

    invoke-static {v0, v1}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mFaceDetectRotation:I

    .line 100
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v5, v0, 0x40

    .line 101
    .local v5, "mAligned64Width":I
    iget v6, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHeight:I

    .line 102
    .local v6, "mAligned64Height":I
    iget-object v8, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$3;-><init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .end local v5    # "mAligned64Width":I
    .end local v6    # "mAligned64Height":I
    :cond_0
    monitor-exit v7

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isNeedFaceData()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 3
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 205
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSensorOrientation:I

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    .line 206
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mFaceDetectRotation:I

    if-ne v0, v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mOrientation:I

    .line 210
    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mFaceDetectRotation:I

    goto :goto_0
.end method

.method public onPreviewFrame([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mOrientation:I

    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSensorOrientation:I

    invoke-static {v0, v2}, Lcom/android/camera/opengl/util/ConUtil;->getEffectOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mFaceDetectRotation:I

    .line 84
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$2;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$2;-><init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;[B)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
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
    .line 115
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    const-string v0, "pref_beauty_level_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_beauty"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 221
    :cond_1
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public process(I[F)I
    .locals 9
    .param p1, "srcTextureId"    # I
    .param p2, "stMatrix"    # [F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 119
    iget-object v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v4, p1}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->onDrawToTexture(I)I

    move-result v3

    .line 121
    .local v3, "textureID":I
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil;->SHOW_FACE_POINT:Z

    if-eqz v4, :cond_0

    .line 122
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;

    invoke-direct {v0}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;-><init>()V

    .line 123
    .local v0, "landMatrix":Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;
    const/16 v4, 0xa2

    new-array v1, v4, [I

    .line 124
    .local v1, "points":[I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeGetPoints([I)I

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->setPoints([I)V

    .line 126
    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-virtual {v0, p1, v4, v5}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->drawLandMark(III)V

    .line 129
    .end local v0    # "landMatrix":Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;
    .end local v1    # "points":[I
    :cond_0
    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-static {v7, v7, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 130
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    invoke-virtual {v4, v3, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessTexture(II)I

    move-result v2

    .line 131
    .local v2, "result":I
    if-eqz v2, :cond_1

    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processTexture(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    :cond_1
    const v4, 0x8d40

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 133
    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-static {v7, v7, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 134
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v8, v8, v8, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 135
    const/16 v4, 0x4000

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 136
    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    return v4
.end method

.method public processWithRGBATexture(I[F)I
    .locals 7
    .param p1, "srcTextureId"    # I
    .param p2, "stMatrix"    # [F

    .prologue
    const/4 v6, 0x0

    .line 140
    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 141
    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil;->SHOW_FACE_POINT:Z

    if-eqz v3, :cond_0

    .line 142
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;

    invoke-direct {v0}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;-><init>()V

    .line 143
    .local v0, "landMatrix":Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;
    const/16 v3, 0xa2

    new-array v1, v3, [I

    .line 144
    .local v1, "points":[I
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeGetPoints([I)I

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->setPoints([I)V

    .line 146
    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-virtual {v0, p1, v3, v4}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->drawLandMark(III)V

    .line 148
    .end local v0    # "landMatrix":Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;
    .end local v1    # "points":[I
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    invoke-virtual {v3, p1, v4}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessTexture(II)I

    move-result v2

    .line 149
    .local v2, "result":I
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processTexture(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    :cond_1
    const v3, 0x8d40

    invoke-static {v3, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 151
    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mSurfaceHeight:I

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 152
    iget v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    return v3
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 157
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 158
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v3, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 159
    :try_start_0
    const-string v2, "sync mRelease done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 161
    const-string v2, "not stop before, stop it"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$4;

    invoke-direct {v4, p0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine$4;-><init>(Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)V

    invoke-virtual {v2, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 169
    const-string v2, "schedule runnable done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    move-result v0

    .line 172
    .local v0, "code":I
    const-string v2, "BeaurifyJniSdk release"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 173
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 174
    :cond_0
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseResources()I

    .line 175
    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    if-eq v2, v6, :cond_1

    .line 176
    iget v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->deleteTextureID(I)V

    .line 177
    const-string v2, "delete Texture done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 179
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mImageTexture:I

    .line 180
    const-string v2, "clear mImageTexture ref"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->destroyFramebuffers()V

    .line 184
    const-string v2, "mCameraMatrix.destroyFramebuffers"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mCameraMatrix:Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;

    invoke-virtual {v2}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->destroy()V

    .line 186
    const-string v2, "mCameraMatrix.destroy"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    const-string v2, "removeCallbacksAndMessages"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->waitDone(Landroid/os/Handler;)Z

    .line 192
    const-string v2, "waitDone OK"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 194
    const-string v2, "quitSafely OK"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandler:Landroid/os/Handler;

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 197
    const-string v2, "reset done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 199
    .end local v0    # "code":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setNeedDefaultBeauty(Z)V
    .locals 1
    .param p1, "needDefaultBeauty"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->isNeedDefaultBeauty:Z

    .line 226
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->setBeautyParameters(Lcom/android/camera/settings/SettingsManager;)V

    .line 227
    return-void
.end method
