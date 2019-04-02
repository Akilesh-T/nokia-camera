.class public Lcom/fih_foxconn/imagelab/PSModelLite;
.super Lcom/fih_foxconn/imagelab/AbstractPSModel;
.source "PSModelLite.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# instance fields
.field private objPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 29
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 37
    :try_start_0
    const-string v1, "jni_PSModelLite"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "loadLibrary jni_PSModelLite OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 44
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSModelLite;->objPtr:J

    .line 60
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelLite;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 61
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelLite;->setup(I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/fih_foxconn/imagelab/PSModelInputType;)V
    .locals 2
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSModelLite;->objPtr:J

    .line 65
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelLite;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 66
    invoke-virtual {p1}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelLite;->setup(I)V

    .line 67
    return-void
.end method

.method private native clean()V
.end method

.method private native getModel()[B
.end method

.method private native getModelSize()I
.end method

.method private native inference([B[BIII)V
.end method

.method private native setup(I)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSModelLite;->clean()V

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fih_foxconn/imagelab/PSModelLite;->objPtr:J

    .line 74
    return-void
.end method

.method public inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 14
    .param p1, "psImage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 78
    move-object v7, p1

    check-cast v7, Lcom/fih_foxconn/imagelab/PSImageLite;

    .line 80
    .local v7, "psImageLite":Lcom/fih_foxconn/imagelab/PSImageLite;
    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSHeight()I

    move-result v0

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    .line 79
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 81
    .local v6, "inBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getInputImg1D()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 83
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "h: %d, w: %d, ch: %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v13

    const/4 v3, 0x2

    .line 84
    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getChannels()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 86
    .local v10, "javaExecuteStart":J
    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getInputImg1D()[B

    move-result-object v1

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getRstImg1D()[B

    move-result-object v2

    .line 87
    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSHeight()I

    move-result v3

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getPSWidth()I

    move-result v4

    invoke-virtual {v7}, Lcom/fih_foxconn/imagelab/PSImageLite;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelLite;->inference([B[BIII)V

    .line 88
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 89
    .local v8, "javaExecuteEnd":J
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelLite;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "predictImage end - exec time: %d ms"

    new-array v2, v13, [Ljava/lang/Object;

    sub-long v4, v8, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method
