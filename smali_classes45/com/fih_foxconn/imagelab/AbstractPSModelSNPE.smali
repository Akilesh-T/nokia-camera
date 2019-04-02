.class public abstract Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;
.super Lcom/fih_foxconn/imagelab/AbstractPSModel;
.source "AbstractPSModelSNPE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;


# instance fields
.field protected enableDebug:Z

.field protected mApplication:Landroid/app/Application;

.field protected mInputLayer:Ljava/lang/String;

.field protected mModelFile:Ljava/io/File;

.field protected mModelSize:I

.field protected mModelStream:Ljava/io/InputStream;

.field protected mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

.field protected mOutputLayer:Ljava/lang/String;

.field protected mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field protected mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-direct {v0}, Lcom/fih_foxconn/imagelab/env/Logger;-><init>()V

    sput-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModel;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->enableDebug:Z

    .line 25
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mInputLayer:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mOutputLayer:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-void
.end method


# virtual methods
.method public build()Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 14

    .prologue
    .line 51
    const-wide/16 v6, -0x1

    .line 54
    .local v6, "loadTime":J
    :try_start_0
    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mModelStream:Ljava/io/InputStream;

    if-eqz v10, :cond_2

    .line 55
    new-instance v10, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    iget-boolean v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->enableDebug:Z

    .line 56
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v13, v11, v12

    .line 57
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mModelStream:Ljava/io/InputStream;

    iget v12, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mModelSize:I

    .line 58
    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    const/4 v11, 0x1

    .line 59
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    sget-object v11, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 60
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    sget-object v12, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->FLOAT:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    if-eq v10, v12, :cond_1

    const/4 v10, 0x1

    .line 61
    :goto_0
    invoke-virtual {v11, v10}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v0

    .line 71
    .local v0, "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 72
    .local v8, "start":J
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->build()Lcom/qualcomm/qti/snpe/NeuralNetwork;

    move-result-object v10

    iput-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 75
    .local v2, "end":J
    sub-long v6, v2, v8

    .line 76
    sget-object v10, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Model size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mModelSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " build time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v10}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getInputTensorsNames()Ljava/util/Set;

    move-result-object v4

    .line 80
    .local v4, "inputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v10}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->getOutputTensorsNames()Ljava/util/Set;

    move-result-object v5

    .line 84
    .local v5, "outputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    .line 85
    :cond_0
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Invalid network input and/or output tensors."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v0    # "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .end local v2    # "end":J
    .end local v4    # "inputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "outputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "start":J
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v10, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/fih_foxconn/imagelab/env/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object v10

    .line 60
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 63
    :cond_2
    :try_start_1
    new-instance v10, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    iget-object v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mApplication:Landroid/app/Application;

    invoke-direct {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;-><init>(Landroid/app/Application;)V

    iget-boolean v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->enableDebug:Z

    .line 64
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v13, v11, v12

    .line 65
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mModelFile:Ljava/io/File;

    .line 66
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    const/4 v11, 0x1

    .line 67
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v10

    sget-object v11, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->LOW:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 68
    invoke-virtual {v10, v11}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v11

    iget-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mTensorFormat:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    sget-object v12, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;->FLOAT:Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE$SupportedTensorFormat;

    if-eq v10, v12, :cond_3

    const/4 v10, 0x1

    .line 69
    :goto_4
    invoke-virtual {v11, v10}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;

    move-result-object v0

    .restart local v0    # "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    goto/16 :goto_1

    .line 68
    .end local v0    # "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 87
    .restart local v0    # "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .restart local v2    # "end":J
    .restart local v4    # "inputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v5    # "outputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "start":J
    :cond_4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mInputLayer:Ljava/lang/String;

    .line 88
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mOutputLayer:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 91
    .end local v0    # "builder":Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .end local v2    # "end":J
    .end local v4    # "inputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "outputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "start":J
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 38
    invoke-virtual {p0}, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->release()V

    .line 39
    return-void
.end method

.method public getInputLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mInputLayer:Ljava/lang/String;

    return-object v0
.end method

.method public getNeuralNetwork()Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    return-object v0
.end method

.method public getOutputLayer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mOutputLayer:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    invoke-interface {v0}, Lcom/qualcomm/qti/snpe/NeuralNetwork;->release()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->mNeuralNetwork:Lcom/qualcomm/qti/snpe/NeuralNetwork;

    .line 46
    sget-object v0, Lcom/fih_foxconn/imagelab/AbstractPSModelSNPE;->LOGGER:Lcom/fih_foxconn/imagelab/env/Logger;

    const-string v1, "Model released"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/fih_foxconn/imagelab/env/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    return-void
.end method
