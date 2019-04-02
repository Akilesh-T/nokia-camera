.class public Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
.super Ljava/lang/Object;
.source "SNPE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/snpe/SNPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NeuralNetworkBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;
    }
.end annotation


# instance fields
.field private mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

.field private final mInputDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mIsCpuFallbackEnabled:Z

.field private mIsDebugEnabled:Z

.field private mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

.field private mModelFile:Ljava/io/File;

.field private final mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

.field private mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

.field private mUseUserSuppliedBuffers:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    const/4 v1, 0x0

    sget-object v2, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->CPU:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 76
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->DEFAULT:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 78
    sget-object v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->NORMAL:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    .line 95
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/SNPE;->access$000(Landroid/app/Application;)V

    .line 96
    return-void
.end method

.method private resetFileModel()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    .line 249
    return-void
.end method

.method private resetModel()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    .line 244
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetFileModel()V

    .line 245
    return-void
.end method

.method private resetStreamModel()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->release()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    .line 256
    :cond_0
    return-void
.end method

.method private selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 6

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 282
    .local v1, "selected":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 283
    .local v0, "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    move-object v1, v0

    .line 289
    .end local v0    # "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :cond_0
    if-nez v1, :cond_2

    .line 290
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "None of the selected runtime targets are supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    .restart local v0    # "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public build()Lcom/qualcomm/qti/snpe/NeuralNetwork;
    .locals 11

    .prologue
    .line 264
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-object v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-direct/range {v0 .. v9}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)V

    .line 268
    .local v0, "network":Lcom/qualcomm/qti/snpe/internal/NativeNetwork;
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetStreamModel()V

    .line 272
    .end local v0    # "network":Lcom/qualcomm/qti/snpe/internal/NativeNetwork;
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 272
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;

    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->selectRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    iget-object v4, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    iget-object v6, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    iget-object v7, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    iget-boolean v9, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    iget-object v10, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-direct/range {v1 .. v10}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;-><init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)V

    move-object v0, v1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v1, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;

    invoke-direct {v1}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder$ModelNotSet;-><init>()V

    throw v1
.end method

.method public isRuntimeSupported(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .locals 1
    .param p1, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .prologue
    .line 297
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z

    move-result v0

    return v0
.end method

.method public setCpuFallbackEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsCpuFallbackEnabled:Z

    .line 229
    return-object p0
.end method

.method public setDebugEnabled(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mIsDebugEnabled:Z

    .line 191
    return-object p0
.end method

.method public setExecutionPriorityHint(Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2
    .param p1, "priority"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Execution priority hint can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mExecutionPriorityHint:Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;

    .line 219
    return-object p0
.end method

.method public setInputDimensions(Ljava/util/Map;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "inputDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    if-nez p1, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input dimensions can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 130
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mInputDimensions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 131
    return-object p0
.end method

.method public setModel(Ljava/io/File;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Model file can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not read from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    .line 185
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelFile:Ljava/io/File;

    .line 186
    return-object p0
.end method

.method public setModel(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->resetModel()V

    .line 161
    invoke-static {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/IOUtil;->bufferFromStream(Ljava/io/InputStream;I)Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mModelBuffer:Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;

    .line 162
    return-object p0
.end method

.method public varargs setOutputLayers([Ljava/lang/String;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2
    .param p1, "outputLayers"    # [Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output layers can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 144
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 145
    return-object p0
.end method

.method public setPerformanceProfile(Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 2
    .param p1, "profile"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .prologue
    .line 201
    if-nez p1, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Performance profile can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mPerformanceProfile:Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;

    .line 205
    return-object p0
.end method

.method public varargs setRuntimeOrder([Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 4
    .param p1, "order"    # [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 105
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Runtime order can not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_1
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, p1, v1

    .line 109
    .local v0, "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    if-nez v0, :cond_2

    .line 110
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Runtime can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v0    # "runtime":Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    :cond_3
    array-length v1, p1

    new-array v1, v1, [Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 115
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mRuntimeOrder:[Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    array-length v3, p1

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-object p0
.end method

.method public setUseUserSuppliedBuffers(Z)Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/qualcomm/qti/snpe/SNPE$NeuralNetworkBuilder;->mUseUserSuppliedBuffers:Z

    .line 239
    return-object p0
.end method
