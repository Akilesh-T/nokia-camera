.class public Lcom/thirdparty/megvii/engine/PortraitLightenImage;
.super Ljava/lang/Object;
.source "PortraitLightenImage.java"

# interfaces
.implements Lcom/thirdparty/megvii/engine/MegviiImage;


# static fields
.field private static final JPEG_COMPRESS_RATIO:I = 0x64

.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# instance fields
.field private mAlignImgWidth:I

.field private mBeautyLevel:I

.field private mEffectSetting:Ljava/lang/String;

.field private mImgHeight:I

.field private mImgWidth:I

.field private mIsBeautyOn:Z

.field private mScreenOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "LighteningImage"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;ZI)V
    .locals 4
    .param p1, "imgWidth"    # I
    .param p2, "imgHeight"    # I
    .param p3, "screenOrientation"    # I
    .param p4, "effectSetting"    # Ljava/lang/String;
    .param p5, "isBeautyOn"    # Z
    .param p6, "beautyLevel"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgWidth:I

    .line 33
    iput p2, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    .line 34
    iget v0, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    .line 35
    iput p3, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mScreenOrientation:I

    .line 36
    iput-object p4, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mEffectSetting:Ljava/lang/String;

    .line 37
    iput-boolean p5, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mIsBeautyOn:Z

    .line 38
    iput p6, p0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mBeautyLevel:I

    .line 39
    return-void
.end method


# virtual methods
.method public processImage([B)[B
    .locals 23
    .param p1, "imgData"    # [B

    .prologue
    .line 43
    const-class v22, Lcom/thirdparty/megvii/engine/PortraitLightenImage;

    monitor-enter v22

    .line 44
    :try_start_0
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v4

    const-string v5, "Lightening.PostProcessing"

    invoke-virtual {v4, v5}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v20

    .line 47
    .local v20, "profile":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mScreenOrientation:I

    rsub-int v4, v4, 0x168

    rem-int/lit16 v9, v4, 0x168

    .line 48
    .local v9, "orientation":I
    sget-object v4, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "orientation===="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "   mScreenOrientation==="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mScreenOrientation:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->d(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/megvii/humansdk/HumanEffectApi;

    invoke-direct {v1}, Lcom/megvii/humansdk/HumanEffectApi;-><init>()V

    .line 51
    .local v1, "api":Lcom/megvii/humansdk/HumanEffectApi;
    new-instance v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    invoke-direct {v3}, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;-><init>()V

    .line 53
    .local v3, "config":Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;
    const/4 v4, 0x1

    iput v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    .line 54
    new-instance v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    invoke-direct {v4}, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;-><init>()V

    iput-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    .line 55
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->supportFloatTexture()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v5, 0x1

    iput v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    .line 60
    :goto_0
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f070016

    invoke-static {v5, v7}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v5

    iput-object v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    .line 61
    const-string v4, "set init parameter"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f07000d

    invoke-static {v4, v5}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v2

    .line 64
    .local v2, "model":[B
    const-string v4, "load model"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 65
    const/16 v4, 0x64

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/megvii/humansdk/HumanEffectApi;->init([BLcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;III)Z

    .line 66
    const-string v4, "init"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 68
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mEffectSetting:Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/android/camera/opengl/effect/lighten/LightenUtil;->getType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->type:I

    .line 69
    sget-object v4, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processImage() mEffectSetting: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mEffectSetting:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    iput v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageWidth:I

    .line 71
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    iput v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageHeight:I

    .line 73
    const-string v4, "set parameter"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 74
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iget-object v4, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    if-eqz v4, :cond_0

    .line 75
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    .line 78
    :cond_0
    invoke-virtual {v1, v3}, Lcom/megvii/humansdk/HumanEffectApi;->setConfig(Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;)I

    .line 79
    const-string v4, "set configure"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 81
    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v6, v4, [B

    .line 82
    .local v6, "outImgData":[B
    move-object/from16 v0, p0

    iget v7, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/megvii/humansdk/HumanEffectApi;->processImageNV21([B[BIII)I

    move-result v21

    .line 83
    .local v21, "success":I
    sget-object v4, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processImage() success: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    const-string v4, "processImage"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1}, Lcom/megvii/humansdk/HumanEffectApi;->release()I

    .line 87
    const-string v4, "HumanEffectApi release"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 89
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mIsBeautyOn:Z

    if-eqz v4, :cond_2

    .line 90
    invoke-static {}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    move-result-object v10

    .line 91
    .local v10, "beautySdk":Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v19, v0

    .line 92
    .local v19, "outBeautyImgData":[B
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mScreenOrientation:I

    const/4 v15, 0x0

    .line 94
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070014

    invoke-static {v4, v5}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v16

    .line 95
    invoke-static {}, Lcom/android/camera/util/AndroidContext;->instance()Lcom/android/camera/util/AndroidContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidContext;->get()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f070013

    invoke-static {v4, v5}, Lcom/android/camera/opengl/util/ConUtil;->getFileContent(Landroid/content/Context;I)[B

    move-result-object v17

    .line 92
    invoke-virtual/range {v10 .. v17}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I

    .line 96
    const-string v4, "create beauty handle"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mBeautyLevel:I

    invoke-static {v4}, Lcom/android/camera/opengl/util/ConUtil;->getBeautyLevel(I)[F

    move-result-object v18

    .line 99
    .local v18, "beautyLevel":[F
    sget-object v4, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setDenioseLevel = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget v7, v18, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    sget-object v4, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBrightnessLevel = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x1

    aget v7, v18, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    const/4 v4, 0x4

    const/4 v5, 0x0

    aget v5, v18, v5

    invoke-virtual {v10, v4, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 102
    const/4 v4, 0x3

    const/4 v5, 0x1

    aget v5, v18, v5

    invoke-virtual {v10, v4, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeSetBeautyParam(IF)I

    .line 103
    const-string v4, "set beauty level"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget v4, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mAlignImgWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/thirdparty/megvii/engine/PortraitLightenImage;->mImgHeight:I

    move-object/from16 v0, v19

    invoke-virtual {v10, v6, v0, v4, v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessImageNV21([B[BII)I

    .line 106
    const-string v4, "process image"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v10}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeReleaseBeautyHandle()I

    .line 109
    const-string v4, "release BeautyHandle"

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 111
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 112
    monitor-exit v22

    .line 115
    .end local v10    # "beautySdk":Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    .end local v18    # "beautyLevel":[F
    .end local v19    # "outBeautyImgData":[B
    :goto_1
    return-object v19

    .line 58
    .end local v2    # "model":[B
    .end local v6    # "outImgData":[B
    .end local v21    # "success":I
    :cond_1
    iget-object v4, v3, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    const/4 v5, 0x0

    iput v5, v4, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    goto/16 :goto_0

    .line 116
    .end local v1    # "api":Lcom/megvii/humansdk/HumanEffectApi;
    .end local v3    # "config":Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;
    .end local v9    # "orientation":I
    .end local v20    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :catchall_0
    move-exception v4

    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 114
    .restart local v1    # "api":Lcom/megvii/humansdk/HumanEffectApi;
    .restart local v2    # "model":[B
    .restart local v3    # "config":Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;
    .restart local v6    # "outImgData":[B
    .restart local v9    # "orientation":I
    .restart local v20    # "profile":Lcom/android/camera/stats/profiler/Profile;
    .restart local v21    # "success":I
    :cond_2
    :try_start_1
    invoke-interface/range {v20 .. v20}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 115
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v19, v6

    goto :goto_1
.end method

.method public release()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public syncImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "inBmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method
