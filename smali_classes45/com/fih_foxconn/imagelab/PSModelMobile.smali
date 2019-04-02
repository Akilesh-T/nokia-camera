.class public Lcom/fih_foxconn/imagelab/PSModelMobile;
.super Lcom/fih_foxconn/imagelab/AbstractPSModel;
.source "PSModelMobile.java"


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

    .line 23
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 31
    :try_start_0
    const-string v1, "jni_PSModel"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "loadLibrary jni_PSModel OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelMobile;->extStore:Ljava/lang/String;

    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    .line 35
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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
    .line 60
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSModelMobile;->debug:Z

    .line 60
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelMobile;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    return-void
.end method

.method public constructor <init>(Lcom/fih_foxconn/imagelab/PSModelInputType;)V
    .locals 1
    .param p1, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/PSModelMobile;->debug:Z

    .line 62
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelMobile;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

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
    .line 66
    move-object v10, p1

    check-cast v10, Lcom/fih_foxconn/imagelab/PSImageMobile;

    .line 67
    .local v10, "psImageMobile":Lcom/fih_foxconn/imagelab/PSImageMobile;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 68
    .local v8, "javaExecuteStart":J
    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getInputImg1D()[F

    move-result-object v1

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getRstImg1D()[J

    move-result-object v2

    .line 69
    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getPSHeight()I

    move-result v3

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getPSWidth()I

    move-result v4

    invoke-virtual {v10}, Lcom/fih_foxconn/imagelab/PSImageMobile;->getChannels()I

    move-result v5

    move-object v0, p0

    .line 68
    invoke-direct/range {v0 .. v5}, Lcom/fih_foxconn/imagelab/PSModelMobile;->inference([F[JIII)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 71
    .local v6, "javaExecuteEnd":J
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelMobile;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "predictImage - exec time: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sub-long v4, v6, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-void
.end method
