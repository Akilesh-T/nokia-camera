.class public Lcom/megvii/humansdk/HumanEffectApi;
.super Ljava/lang/Object;
.source "HumanEffectApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/megvii/humansdk/HumanEffectApi$RelightRenderType;,
        Lcom/megvii/humansdk/HumanEffectApi$RelightType;,
        Lcom/megvii/humansdk/HumanEffectApi$SDKAbility;,
        Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;,
        Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;,
        Lcom/megvii/humansdk/HumanEffectApi$ErrorCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/megvii/humansdk/HumanEffectApi;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/megvii/humansdk/HumanEffectApi;->TAG:Ljava/lang/String;

    .line 28
    :try_start_0
    const-string v1, "MegviiHum-jni-1.0"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    sget-object v1, Lcom/megvii/humansdk/HumanEffectApi;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary MegviiHum-jni-1.0 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/megvii/humansdk/HumanEffectApi;->TAG:Ljava/lang/String;

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

    .line 33
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/megvii/humansdk/HumanEffectApi;->TAG:Ljava/lang/String;

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

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    .line 41
    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 179
    const-string v0, "errorMessage"

    return-object v0
.end method

.method private native nativeCleanData(J)I
.end method

.method private native nativeDetect(J[BIII)I
.end method

.method private native nativeInitHandle([B[BIIIIII)J
.end method

.method private native nativeProcess(JIII)I
.end method

.method private native nativeProcessImage(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeSetRelightConfig(JIII[BIII)I
.end method


# virtual methods
.method public declared-synchronized cleanData()I
    .locals 6

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 120
    :goto_0
    monitor-exit p0

    return v0

    .line 119
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    invoke-direct {p0, v2, v3}, Lcom/megvii/humansdk/HumanEffectApi;->nativeCleanData(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 120
    .local v0, "ret":I
    goto :goto_0

    .line 118
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized detect([BIII)I
    .locals 8
    .param p1, "yuvImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 56
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/megvii/humansdk/HumanEffectApi;->nativeDetect(J[BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init([BLcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;III)Z
    .locals 9
    .param p1, "model"    # [B
    .param p2, "config"    # Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "origin"    # I

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    const-string v0, "zyt"

    const-string v1, " public boolean init1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 50
    :goto_0
    monitor-exit p0

    return v0

    .line 46
    :cond_0
    :try_start_1
    const-string v0, "zyt"

    const-string v1, " public boolean init2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v0, p2, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iget-object v2, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    iget v3, p2, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    iget-object v0, p2, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iget v4, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    iget-object v0, p2, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    iget v5, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->type:I

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/megvii/humansdk/HumanEffectApi;->nativeInitHandle([B[BIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    .line 50
    iget-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native nativeProcessImageNV21(J[B[BIII)I
.end method

.method public declared-synchronized process(III)I
    .locals 7
    .param p1, "input"    # I
    .param p2, "output"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 62
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/megvii/humansdk/HumanEffectApi;->nativeProcess(JIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public processImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/megvii/humansdk/HumanEffectApi;->processImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v0

    return v0
.end method

.method public declared-synchronized processImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .locals 9
    .param p1, "input"    # Landroid/graphics/Bitmap;
    .param p2, "output"    # Landroid/graphics/Bitmap;
    .param p3, "orientation"    # I

    .prologue
    const/4 v7, 0x1

    .line 94
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v7, 0x2

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return v7

    .line 95
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 98
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 99
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v8, v1, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 103
    const-string v1, "mghum"

    const-string v2, "processImage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/megvii/humansdk/HumanEffectApi;->nativeProcessImage(JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 105
    .local v7, "ret":I
    if-nez v7, :cond_0

    .line 107
    const/4 v7, 0x0

    goto :goto_0

    .line 94
    .end local v0    # "height":I
    .end local v7    # "ret":I
    .end local v8    # "width":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public processImageNV21([B[BII)I
    .locals 9
    .param p1, "inData_"    # [B
    .param p2, "outData_"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 81
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Lcom/megvii/humansdk/HumanEffectApi;->nativeProcessImageNV21(J[B[BIII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized processImageNV21([B[BIII)I
    .locals 9
    .param p1, "inData_"    # [B
    .param p2, "outData_"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 86
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/megvii/humansdk/HumanEffectApi;->nativeProcessImageNV21(J[B[BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 111
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 114
    :goto_0
    monitor-exit p0

    return v0

    .line 112
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    invoke-direct {p0, v2, v3}, Lcom/megvii/humansdk/HumanEffectApi;->nativeRelease(J)I

    move-result v0

    .line 113
    .local v0, "ret":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setConfig(Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;)I
    .locals 11
    .param p1, "config"    # Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;

    .prologue
    const/4 v1, 0x1

    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 67
    const/4 v1, 0x2

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 69
    :cond_1
    :try_start_1
    iget v2, p1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    if-nez v2, :cond_0

    .line 71
    :cond_2
    iget-object v0, p1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->relightConfig:Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;

    .line 72
    .local v0, "c":Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;
    if-eqz v0, :cond_0

    .line 73
    iget-wide v2, p0, Lcom/megvii/humansdk/HumanEffectApi;->handle:J

    iget v4, p1, Lcom/megvii/humansdk/HumanEffectApi$HumanEffectConfig;->ability:I

    iget v5, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->renderType:I

    iget v6, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->type:I

    iget-object v7, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->resource:[B

    iget v8, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->intensity:I

    iget v9, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageWidth:I

    iget v10, v0, Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;->imageHeight:I

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/megvii/humansdk/HumanEffectApi;->nativeSetRelightConfig(JIII[BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 66
    .end local v0    # "c":Lcom/megvii/humansdk/HumanEffectApi$RelightConfig;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
