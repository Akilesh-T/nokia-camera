.class public Lcom/megvii/beautify/jni/BeaurifyJniSdk;
.super Ljava/lang/Object;
.source "BeaurifyJniSdk.java"


# static fields
.field public static final ABILITY_TYPE_DEFAULT:I = 0x0

.field public static final ABILITY_TYPE_IMAGE:I = 0x1

.field public static final ABILITY_TYPE_PREVIEW:I = 0x0

.field public static final MG_BEAUTIFY_ADD_PINK:I = 0x5

.field public static final MG_BEAUTIFY_BRIGHTNESS:I = 0x3

.field public static final MG_BEAUTIFY_DENOISE:I = 0x4

.field public static final MG_BEAUTIFY_ENLARGE_EYE:I = 0x1

.field public static final MG_BEAUTIFY_SHRINK_FACE:I = 0x2

.field private static final PROCESS_IMAGE_ID:I = 0x2

.field private static final PROCESS_PREVIEW_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static sImageBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;

.field private static sPreviewBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;


# instance fields
.field private mAbilityType:J

.field private mObject:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;-><init>(I)V

    sput-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->sPreviewBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    .line 45
    new-instance v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;-><init>(I)V

    sput-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->sImageBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->TAG:Ljava/lang/String;

    .line 50
    :try_start_0
    const-string v1, "MegviiBeautify-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 52
    sget-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary MegviiBeautify-jni OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary UnsatisfiedLinkError = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    const-wide/16 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v0, p0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->mObject:J

    .line 41
    iput-wide v0, p0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->mAbilityType:J

    .line 73
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->mAbilityType:J

    .line 74
    return-void
.end method

.method public static synchronized native declared-synchronized alignNV21Data([BII[BII)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public static declared-synchronized createImageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    .locals 3

    .prologue
    .line 65
    const-class v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synchronized native declared-synchronized deAlignNV21Data([BII[BII)V
.end method

.method public static getAlignSize(I)I
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 215
    const/16 v0, 0x40

    .line 216
    .local v0, "ALIGN_BASE":I
    div-int v2, p0, v0

    mul-int v1, v2, v0

    .line 217
    .local v1, "outW":I
    if-eq v1, p0, :cond_0

    .line 218
    add-int/2addr v1, v0

    .line 220
    :cond_0
    return v1
.end method

.method public static declared-synchronized imageInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->sImageBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized preViewInstance()Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/megvii/beautify/jni/BeaurifyJniSdk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->sPreviewBeaurifyJniSdk:Lcom/megvii/beautify/jni/BeaurifyJniSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synchronized native declared-synchronized testFacePP([B[BII)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method


# virtual methods
.method public synchronized native declared-synchronized nativeChangePackage(Ljava/lang/String;)I
.end method

.method public synchronized native declared-synchronized nativeCreateBeautyHandle(Landroid/content/Context;IIIII[B[B)I
.end method

.method public declared-synchronized nativeCreateBeautyHandle(Landroid/content/Context;IIII[B[B)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraWidth"    # I
    .param p3, "cameraHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "detectMode"    # I
    .param p6, "beautyModel"    # [B
    .param p7, "faceppModel"    # [B

    .prologue
    .line 96
    monitor-enter p0

    const/16 v6, 0x46

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    :try_start_0
    invoke-virtual/range {v0 .. v8}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeCreateBeautyHandle(Landroid/content/Context;IIIII[B[B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synchronized native declared-synchronized nativeDetectFace([BIII)I
.end method

.method public synchronized native declared-synchronized nativeDetectFaceOrientation([BDDIIII)I
.end method

.method public synchronized native declared-synchronized nativeDetectFaceWithNativeBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIII)I
.end method

.method public synchronized native declared-synchronized nativeDisablePackage()I
.end method

.method public synchronized native declared-synchronized nativeGetPoints([I)I
.end method

.method public synchronized native declared-synchronized nativePreparePackage(Ljava/lang/String;)I
.end method

.method public synchronized native declared-synchronized nativeProcessImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method public declared-synchronized nativeProcessImageNV21([B[BII)I
    .locals 7
    .param p1, "inData"    # [B
    .param p2, "outData"    # [B
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 112
    monitor-enter p0

    const/4 v5, 0x0

    .line 113
    .local v5, "isQcom":Z
    :try_start_0
    sget-object v6, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 114
    .local v6, "hardware":Ljava/lang/String;
    const-string v0, "qcom"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v5, 0x1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/megvii/beautify/jni/BeaurifyJniSdk;->nativeProcessImageNV21([B[BIIZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 112
    .end local v6    # "hardware":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synchronized native declared-synchronized nativeProcessImageNV21([B[BIIZ)I
.end method

.method public synchronized native declared-synchronized nativeProcessTexture(II)I
.end method

.method public synchronized native declared-synchronized nativeReleaseBeautyHandle()I
.end method

.method public synchronized native declared-synchronized nativeReleaseResources()I
.end method

.method public synchronized native declared-synchronized nativeRemoveFilter()I
.end method

.method public synchronized native declared-synchronized nativeSetBeautyParam(IF)I
.end method

.method public synchronized native declared-synchronized nativeSetDetectMode(I)I
.end method

.method public synchronized native declared-synchronized nativeSetFilter(Ljava/lang/String;)I
.end method

.method public synchronized native declared-synchronized nativeSetStickerParam(F)I
.end method

.method public synchronized native declared-synchronized nativeUseFastFilter(Z)I
.end method
