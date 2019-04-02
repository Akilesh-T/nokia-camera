.class public Lcom/megvii/animojisdk/AnimojiApi;
.super Ljava/lang/Object;
.source "AnimojiApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/megvii/animojisdk/AnimojiApi$AnimojiType;,
        Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;,
        Lcom/megvii/animojisdk/AnimojiApi$ErrorCode;
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
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/megvii/animojisdk/AnimojiApi;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_JAVA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/megvii/animojisdk/AnimojiApi;->TAG:Ljava/lang/String;

    .line 24
    :try_start_0
    const-string v1, "MegviiAnimoji-jni-1.0"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    sget-object v1, Lcom/megvii/animojisdk/AnimojiApi;->TAG:Ljava/lang/String;

    const-string v2, "loadLibrary MegviiAnimoji-jni-1.0 OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/megvii/animojisdk/AnimojiApi;->TAG:Ljava/lang/String;

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

    .line 29
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/megvii/animojisdk/AnimojiApi;->TAG:Ljava/lang/String;

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
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    .line 37
    return-void
.end method

.method public static getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 102
    const-string v0, "errorMessage"

    return-object v0
.end method

.method private native nativeDetect(J[BIII)I
.end method

.method private native nativeInitHandle([B[BIIIIII)J
.end method

.method private native nativeProcess(JIII[F)I
.end method

.method private native nativeRelease(J)I
.end method

.method private native nativeSetAnimojiConfig(JIII[BI)I
.end method

.method private native nativeUpdateAnimojiOrientation(JIII[BI)I
.end method


# virtual methods
.method public declared-synchronized detect([BIII)I
    .locals 8
    .param p1, "yuvImage"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 48
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/megvii/animojisdk/AnimojiApi;->nativeDetect(J[BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init([BLcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;I)Z
    .locals 12
    .param p1, "model"    # [B
    .param p2, "config"    # Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;
    .param p3, "orientation"    # I

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    .line 40
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_0

    .line 43
    :goto_0
    monitor-exit p0

    return v9

    .line 41
    :cond_0
    :try_start_1
    iget-object v2, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    iget v3, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->renderType:I

    iget v4, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageWidth:I

    iget v5, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageHeight:I

    iget v6, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->multiSample:I

    iget v7, p2, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    move-object v0, p0

    move-object v1, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/megvii/animojisdk/AnimojiApi;->nativeInitHandle([B[BIIIIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    .line 43
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v0, v10

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v9, v0

    goto :goto_0

    :cond_1
    move v0, v9

    goto :goto_1

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized process(III[F)I
    .locals 8
    .param p1, "input"    # I
    .param p2, "output"    # I
    .param p3, "rotation"    # I
    .param p4, "nnpData"    # [F

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 54
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/megvii/animojisdk/AnimojiApi;->nativeProcess(JIII[F)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x2

    .line 73
    :goto_0
    monitor-exit p0

    return v0

    .line 71
    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    invoke-direct {p0, v2, v3}, Lcom/megvii/animojisdk/AnimojiApi;->nativeRelease(J)I

    move-result v0

    .line 72
    .local v0, "ret":I
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 70
    .end local v0    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setConfig(Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;)I
    .locals 9
    .param p1, "config"    # Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 59
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    iget v4, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->renderType:I

    iget v5, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageWidth:I

    iget v6, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageHeight:I

    iget-object v7, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    iget v8, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/megvii/animojisdk/AnimojiApi;->nativeSetAnimojiConfig(JIII[BI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateOrientation(Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;)I
    .locals 9
    .param p1, "config"    # Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/megvii/animojisdk/AnimojiApi;->handle:J

    iget v4, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->renderType:I

    iget v5, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageWidth:I

    iget v6, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageHeight:I

    iget-object v7, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->resource:[B

    iget v8, p1, Lcom/megvii/animojisdk/AnimojiApi$AnimojiConfig;->imageRotation:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/megvii/animojisdk/AnimojiApi;->nativeUpdateAnimojiOrientation(JIII[BI)I

    move-result v0

    goto :goto_0
.end method
