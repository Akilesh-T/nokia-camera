.class public Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;
.super Lcom/android/camera/opengl/effect/EffectEngine;
.source "ThemeEffectEngine.java"

# interfaces
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final THEME_ANIMATION_DURATION:I = 0x21


# instance fields
.field private firstFrame:Z

.field private mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field mCropRatio:F

.field private mCurrentFrameIndex:I

.field private mImgFilePath:Ljava/lang/String;

.field private mImgTyep:Ljava/lang/String;

.field private mLoadingOver:Z

.field private mLock:Ljava/lang/Object;

.field private mOrientation:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTotalImgCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ThemeEffectEngine"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;IIZI)V
    .locals 10
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "isFacingFront"    # Z
    .param p5, "sensorOrientation"    # I

    .prologue
    .line 47
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/EffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mTotalImgCount:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLoadingOver:Z

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCropRatio:F

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->firstFrame:Z

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mOrientation:I

    .line 50
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;

    invoke-direct {v1, p0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$1;-><init>(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 57
    new-instance v8, Landroid/os/HandlerThread;

    const-class v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mHandler:Landroid/os/Handler;

    .line 61
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_sticker_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {p0, v9}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->updateStyleInfo(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->formatImageNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->getImgFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mTotalImgCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Lcom/android/camera/opengl/effect/theme/AnimRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLoadingOver:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLoadingOver:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    return-object v0
.end method

.method private formatImageNumber(I)Ljava/lang/String;
    .locals 3
    .param p1, "imageNumber"    # I

    .prologue
    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "str":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_0
    :goto_0
    return-object v0

    .line 275
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getImgFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "imageNumber"    # Ljava/lang/String;
    .param p3, "imageType"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "filePath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 259
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 264
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, v0

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private initAnimationDrawable(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 10
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 221
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 222
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sThemeDownloadPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 225
    .local v3, "images":[Ljava/io/File;
    array-length v6, v3

    iput v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mTotalImgCount:I

    .line 226
    sget-object v6, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAnimationDrawable imagesSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mTotalImgCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 227
    iget v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mTotalImgCount:I

    if-nez v6, :cond_0

    move-object v0, v5

    .line 247
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "images":[Ljava/io/File;
    :goto_0
    return-object v0

    .line 230
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v3    # "images":[Ljava/io/File;
    :cond_0
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "path":Ljava/lang/String;
    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    .line 232
    sget-object v6, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAnimationDrawable imageFilePath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 233
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    .line 234
    sget-object v6, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAnimationDrawable imageTye = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    if-nez v6, :cond_3

    :cond_1
    move-object v0, v5

    .line 241
    goto :goto_0

    .end local v3    # "images":[Ljava/io/File;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    move-object v0, v5

    .line 237
    goto :goto_0

    .line 244
    .restart local v3    # "images":[Ljava/io/File;
    .restart local v4    # "path":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgFilePath:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->formatImageNumber(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mImgTyep:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->getImgFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 245
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 v6, 0x21

    invoke-virtual {v0, v5, v6}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V
    .locals 4
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "dsMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p3, "cropRatio"    # F

    .prologue
    .line 143
    iput p3, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCropRatio:F

    .line 144
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->firstFrame:Z

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->firstFrame:Z

    .line 147
    monitor-exit v1

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    iget v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mOrientation:I

    iget v3, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCropRatio:F

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;IF)V

    .line 152
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

.method public isNeedFaceData()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 1
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mOrientation:I

    .line 127
    return-void
.end method

.method public onPreviewFrame([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 73
    return-void
.end method

.method public onPreviewStop()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "default_scope"

    const-string v3, "pref_camera_sticker_key"

    invoke-virtual {p1, v1, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->updateStyleInfo(Ljava/lang/String;)V

    .line 138
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public process(I[F)I
    .locals 1
    .param p1, "srcTextureId"    # I
    .param p2, "stMatrix"    # [F

    .prologue
    .line 82
    const/4 v0, -0x1

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$2;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$2;-><init>(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)V

    invoke-virtual {v0, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 101
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->release()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 109
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->release()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 119
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 122
    return-void

    .line 109
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 119
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public setCropRatio(F)V
    .locals 0
    .param p1, "cropRatio"    # F

    .prologue
    .line 86
    iput p1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCropRatio:F

    .line 87
    return-void
.end method

.method public updateStyleInfo(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 156
    const-string v1, "none"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->release()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    sget-object v1, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStyleInfo : value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 166
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->initAnimationDrawable(Ljava/lang/String;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 170
    iput-boolean v4, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mLoadingOver:Z

    .line 171
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v1

    if-gez v1, :cond_4

    .line 173
    :cond_3
    sget-object v1, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "can\'t get animation drawable height and width, can\'t show theme effect!!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 177
    :cond_4
    iput v4, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mCurrentFrameIndex:I

    .line 178
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;-><init>(II)V

    iput-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mAnimRenderer:Lcom/android/camera/opengl/effect/theme/AnimRenderer;

    .line 180
    :cond_5
    new-instance v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;

    invoke-direct {v0, p0}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine$3;-><init>(Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;)V

    .line 209
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x21

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
