.class public Lcom/fih_foxconn/imagelab/PSModelFastMobile;
.super Lcom/fih_foxconn/imagelab/AbstractPSModel;
.source "PSModelFastMobile.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

.field private static extStore:Ljava/lang/String;


# instance fields
.field private debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 8
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 16
    :try_start_0
    const-string v1, "jni_PSModelFastMobile"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "loadLibrary jni_PSModelFastMobile OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :goto_0
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->extStore:Ljava/lang/String;

    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    .line 20
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->debug:Z

    .line 40
    return-void
.end method

.method private native getModel()[B
.end method

.method private native getModelSize()I
.end method

.method private native inference([F[JIII)V
.end method


# virtual methods
.method public inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 11
    .param p1, "psImage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 44
    move-object v10, p1

    check-cast v10, Lcom/fih_foxconn/imagelab/PSImageFastMobile;

    .line 45
    .local v10, "psImageFastMobile":Lcom/fih_foxconn/imagelab/PSImageFastMobile;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 46
    .local v8, "javaExecuteStart":J
    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;->getInputImg1D()[F

    move-result-object v1

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;->getRstImg1D()[J

    move-result-object v2

    .line 47
    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;->getPSHeight()I

    move-result v3

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;->getPSWidth()I

    move-result v4

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageFastMobile;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 46
    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->inference([F[JIII)V

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 49
    .local v6, "javaExecuteEnd":J
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelFastMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "predictImage - exec time: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-long v4, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method
