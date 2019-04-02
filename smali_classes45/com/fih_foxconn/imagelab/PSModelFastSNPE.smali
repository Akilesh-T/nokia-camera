.class public Lcom/fih_foxconn/imagelab/PSModelFastSNPE;
.super Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;
.source "PSModelFastSNPE.java"


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 14
    new-instance v1, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v1}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v1, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    .line 22
    :try_start_0
    const-string v1, "jni_PSModelFastSNPE"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v2, "loadLibrary jni_PSModelFastSNPE OK"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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

    .line 26
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

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
    .line 36
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 38
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->getModel()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 41
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->getModelSize()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 42
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 43
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "targetRuntime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 49
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->getModel()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 52
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->getModelSize()I

    move-result v0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 53
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 54
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "targetRuntime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p3, "modelFile"    # Ljava/io/File;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 78
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 79
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 82
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 83
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "targetRuntime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "size"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 107
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 109
    iput-object p3, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 110
    iput p4, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 111
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 112
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/io/File;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "modelFile"    # Ljava/io/File;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 66
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 67
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 70
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 71
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "size"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mApplication:Landroid/app/Application;

    .line 95
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->GPU_FLOAT16:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelFile:Ljava/io/File;

    .line 97
    iput-object p2, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelStream:Ljava/io/InputStream;

    .line 98
    iput p3, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mModelSize:I

    .line 99
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->UB_TF8:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    .line 100
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 101
    return-void
.end method

.method private native getModel()[B
.end method

.method private native getModelSize()I
.end method


# virtual methods
.method public inference(Lcom/fih_foxconn/imagelab/AbstractPSImage;)V
    .locals 13
    .param p1, "psimage"    # Lcom/fih_foxconn/imagelab/AbstractPSImage;

    .prologue
    .line 118
    const-wide/16 v0, -0x1

    .local v0, "execTime":J
    move-object v6, p1

    .line 119
    check-cast v6, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;

    .line 120
    .local v6, "psImageFastSNPE":Lcom/fih_foxconn/imagelab/PSImageFastSNPE;
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->prepareInputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 121
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->prepareOutputTensors(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 124
    .local v4, "javaExecuteStart":J
    iget-object v8, p0, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getInputTensors()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->getOutputTensors()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->execute(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v7

    .line 125
    .local v7, "status":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 127
    .local v2, "javaExecuteEnd":J
    sub-long v0, v2, v4

    .line 128
    sget-object v8, Lcom/fih_foxconn/imagelab/PSModelFastSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v9, "predictImage end - exec time: %d ms"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v6, p0}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->processQuantizedOutput(Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;)V

    .line 131
    invoke-virtual {v6}, Lcom/fih_foxconn/imagelab/PSImageFastSNPE;->releaseTensors()V

    .line 132
    return-void
.end method
