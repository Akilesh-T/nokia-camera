.class public Lcom/thirdparty/megvii/engine/BeautyImage;
.super Ljava/lang/Object;
.source "BeautyImage.java"

# interfaces
.implements Lcom/thirdparty/megvii/engine/MegviiImage;


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mAlignImgWidth:I

.field private mBeautyLevel:I

.field private mImgHeight:I

.field private mImgWidth:I

.field private mScreenOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "BeautyImage"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "imgWidth"    # I
    .param p2, "imgHeight"    # I
    .param p3, "screenOrientation"    # I
    .param p4, "beautyLevel"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgWidth:I

    .line 39
    iput p2, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgHeight:I

    .line 40
    iput p3, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mScreenOrientation:I

    .line 42
    iget v0, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mAlignImgWidth:I

    .line 43
    iput p4, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mBeautyLevel:I

    .line 44
    return-void
.end method


# virtual methods
.method public isNeedProcessBeauty()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 81
    iget v3, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mBeautyLevel:I

    invoke-static {v3}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v0

    .line 82
    .local v0, "beautyLevel":[F
    aget v3, v0, v1

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    aget v3, v0, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public processImage([B)[B
    .locals 13
    .param p1, "imgData"    # [B

    .prologue
    .line 47
    const-class v11, Lcom/thirdparty/megvii/engine/BeautyImage;

    monitor-enter v11

    .line 48
    :try_start_0
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "FaceppProcessBeautyImage"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    .line 51
    .local v10, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget v4, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mScreenOrientation:I

    .line 52
    .local v4, "orientation":I
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FaceppProcessBeautyImage screenOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v0

    .line 55
    .local v0, "beautySdk":Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    iget v1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mAlignImgWidth:I

    iget v2, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgHeight:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v9, v1, [B

    .line 56
    .local v9, "outImgData":[B
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mAlignImgWidth:I

    iget v3, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgHeight:I

    const/4 v5, 0x0

    .line 58
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070014

    invoke-static {v6, v7}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v6

    .line 59
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v7

    const v12, 0x7f070013

    invoke-static {v7, v12}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v7

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    .line 60
    const-string v1, "create beauty handle"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 62
    iget v1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mBeautyLevel:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v8

    .line 63
    .local v8, "beautyLevel":[F
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDenioseLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightnessLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    const/4 v1, 0x4

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 66
    const/4 v1, 0x3

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 67
    const-string v1, "set beauty level"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mAlignImgWidth:I

    iget v2, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mImgHeight:I

    invoke-virtual {v0, p1, v9, v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessImageNV21([B[BII)I

    .line 70
    const-string v1, "process image"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseBeautyHandle()I

    .line 73
    const-string v1, "Release BeautyHandle"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 75
    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 76
    monitor-exit v11

    return-object v9

    .line 77
    .end local v0    # "beautySdk":Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    .end local v4    # "orientation":I
    .end local v8    # "beautyLevel":[F
    .end local v9    # "outImgData":[B
    .end local v10    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public syncImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "inBmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    .line 89
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "FaceppProcessBeautyImage"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    .line 91
    .local v10, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget v1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mScreenOrientation:I

    add-int/lit8 v1, v1, 0x5a

    rem-int/lit16 v4, v1, 0x168

    .line 92
    .local v4, "orientation":I
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FaceppProcessBeautyImage screenOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v0

    .line 95
    .local v0, "beautySdk":Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 96
    .local v9, "outBmp":Landroid/graphics/Bitmap;
    const-string v1, "create output bitmap"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 99
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070014

    invoke-static {v6, v7}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v6

    .line 100
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v7

    const v11, 0x7f070013

    invoke-static {v7, v11}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v7

    .line 97
    invoke-virtual/range {v0 .. v7}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    .line 101
    const-string v1, "create beauty handle"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 102
    iget v1, p0, Lcom/thirdparty/megvii/engine/BeautyImage;->mBeautyLevel:I

    invoke-static {v1}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v8

    .line 103
    .local v8, "beautyLevel":[F
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDenioseLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    sget-object v1, Lcom/thirdparty/megvii/engine/BeautyImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBrightnessLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v8, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x4

    aget v2, v8, v5

    invoke-virtual {v0, v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 106
    const/4 v1, 0x3

    aget v2, v8, v12

    invoke-virtual {v0, v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 107
    const-string v1, "set beauty level"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p1, v9}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 110
    const-string v1, "process image"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseBeautyHandle()I

    .line 113
    const-string v1, "release"

    invoke-interface {v10, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 115
    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 118
    return-object v9
.end method
