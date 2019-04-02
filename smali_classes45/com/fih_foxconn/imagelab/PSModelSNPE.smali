.class public Lcom/fih_foxconn/imagelab/PSModelSNPE;
.super Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;
.source "PSModelSNPE.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

.field private static extStore:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 15
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelSNPE;->extStore:Ljava/lang/String;

    .line 23
    :try_start_0
    const-string v1, "jni_PSModelSNPE"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 24
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "loadLibrary jni_PSModelSNPE OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    .line 27
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mApplication:Landroid/app/Application;

    .line 39
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelFile:Ljava/io/File;

    .line 41
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 42
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModel(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelStream:Ljava/io/InputStream;

    .line 43
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelSize:I

    .line 44
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 45
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/fih_foxconn/imagelab/PSModelInputType;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mApplication:Landroid/app/Application;

    .line 51
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelFile:Ljava/io/File;

    .line 53
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModel(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelStream:Ljava/io/InputStream;

    .line 55
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelSize:I

    .line 56
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 58
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "targetRuntime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mApplication:Landroid/app/Application;

    .line 64
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelFile:Ljava/io/File;

    .line 66
    sget-object v0, Lcom/fih_foxconn/imagelab/PSModelInputType;->RGBM:Lcom/fih_foxconn/imagelab/PSModelInputType;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModel(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelStream:Ljava/io/InputStream;

    .line 68
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelSize:I

    .line 69
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 70
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/fih_foxconn/imagelab/PSModelInputType;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "targetRuntime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p3, "type"    # Lcom/fih_foxconn/imagelab/PSModelInputType;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mApplication:Landroid/app/Application;

    .line 77
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelFile:Ljava/io/File;

    .line 79
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    .line 80
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v1}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModel(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelStream:Ljava/io/InputStream;

    .line 81
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->modelInputType:Lcom/fih_foxconn/imagelab/PSModelInputType;

    invoke-virtual {v0}, Lcom/fih_foxconn/imagelab/PSModelInputType;->getNumOfChannels()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->getModelSize(I)I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mModelSize:I

    .line 82
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 83
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 84
    return-void
.end method

.method private native getModel(I)[B
.end method

.method private native getModelSize(I)I
.end method


# virtual methods
.method public inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 13
    .param p1, "psimage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 89
    const-wide/16 v0, -0x1

    .local v0, "execTime":J
    move-object v6, p1

    .line 90
    check-cast v6, Lcom/fih_foxconn/imagelab/PSImageSNPE;

    .line 91
    .local v6, "psImageSNPE":Lcom/fih_foxconn/imagelab/PSImageSNPE;
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->prepareInputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 92
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->prepareOutputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 96
    .local v4, "javaExecuteStart":J
    iget-object v8, p0, Lcom/fih_foxconn/imagelab/PSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getInputTensors()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->getOutputTensors()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v7

    .line 97
    .local v7, "status":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 99
    .local v2, "javaExecuteEnd":J
    sub-long v0, v2, v4

    .line 100
    sget-object v8, Lcom/fih_foxconn/imagelab/PSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v9, "predictImage end - exec time: %d ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->processQuantizedOutput(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 103
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageSNPE;->releaseTensors()V

    .line 104
    return-void
.end method
