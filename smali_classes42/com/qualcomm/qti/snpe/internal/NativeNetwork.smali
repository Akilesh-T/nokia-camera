.class public final Lcom/qualcomm/qti/snpe/internal/NativeNetwork;
.super Ljava/lang/Object;
.source "NativeNetwork.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/NeuralNetwork;


# static fields
.field private static final mRuntimeAvailability:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mIsDebugEnabled:Z

.field private mModelVersion:Ljava/lang/String;

.field private mNativeHandle:J

.field private mOutputLayerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

.field private mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)V
    .locals 18
    .param p1, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p2, "modelBuffer"    # Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;
    .param p4, "isDebugEnabled"    # Z
    .param p5, "performanceProfile"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .param p6, "executionPriorityHint"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .param p7, "isCpuFallbackEnabled"    # Z
    .param p8, "useUserSuppliedBuffers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p3, "outputLayerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p9, "inputDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 63
    invoke-static/range {v4 .. v11}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v13

    .line 66
    .local v13, "initBundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    invoke-virtual {v13}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 68
    .local v12, "bundleBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 69
    .local v16, "start":J
    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/qti/snpe/internal/util/NativeBufferOutputStream;->getNativeAddress()J

    move-result-wide v4

    .line 70
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 69
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v12, v6}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 73
    .local v14, "end":J
    if-eqz p4, :cond_0

    .line 74
    const-string v4, "snpe-android"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network initialization took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v14, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/io/File;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)V
    .locals 18
    .param p1, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p2, "modelFile"    # Ljava/io/File;
    .param p4, "isDebugEnabled"    # Z
    .param p5, "performanceProfile"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .param p6, "executionPriorityHint"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .param p7, "isCpuFallbackEnabled"    # Z
    .param p8, "useUserSuppliedBuffers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "outputLayerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p9, "inputDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    .line 98
    invoke-static/range {v4 .. v11}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    move-result-object v13

    .line 101
    .local v13, "initBundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    invoke-virtual {v13}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 103
    .local v12, "bundleBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 104
    .local v16, "start":J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    .line 104
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12, v5}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 108
    .local v14, "end":J
    if-eqz p4, :cond_0

    .line 109
    const-string v4, "snpe-android"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network initialization took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v14, v16

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V

    .line 113
    return-void
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tensor"    # Lcom/qualcomm/qti/snpe/Tensor;

    .prologue
    .line 415
    if-nez p2, :cond_0

    .line 416
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tensor can not be null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    .line 419
    :cond_0
    instance-of v1, p2, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    if-nez v1, :cond_1

    .line 420
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input Tensor must be an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    .line 423
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 424
    new-instance v1, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tensor not amongst network input tensors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v1

    .line 427
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/qti/snpe/TensorAttributes;

    invoke-interface {v1}, Lcom/qualcomm/qti/snpe/TensorAttributes;->getDims()[I

    move-result-object v0

    .line 428
    .local v0, "expectedShape":[I
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/Tensor;->getShape()[I

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->assertShape(Ljava/lang/String;[I[I)V

    .line 429
    return-void
.end method

.method private assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tensor"    # Lcom/qualcomm/qti/snpe/UserBufferTensor;

    .prologue
    .line 432
    if-nez p2, :cond_0

    .line 433
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tensor can not be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    instance-of v0, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-nez v0, :cond_1

    .line 437
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input Tensor must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 441
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tensor not amongst network input tensors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_2
    return-void
.end method

.method private assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tensor"    # Lcom/qualcomm/qti/snpe/UserBufferTensor;

    .prologue
    .line 446
    if-nez p2, :cond_0

    .line 447
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tensor can not be null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    instance-of v0, p2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    if-nez v0, :cond_1

    .line 451
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Output Tensor must be an instance of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 455
    new-instance v0, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tensor not amongst network output tensors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_2
    return-void
.end method

.method private static assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "outputLayerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "selectedLayerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "selectedLayer":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected layer is not amongst network output layers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    .end local v0    # "selectedLayer":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static createInitBundle(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;ZLcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;ZZLjava/util/Map;)Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .locals 4
    .param p0, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p2, "isDebugEnabled"    # Z
    .param p3, "performanceProfile"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;
    .param p4, "executionPriorityHint"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;
    .param p5, "isCpuFallbackEnabled"    # Z
    .param p6, "useUserSuppliedBuffers"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;",
            "ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "layerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p7, "inputDimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 321
    .local v0, "bundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    iget v2, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 322
    iget v2, p3, Lcom/qualcomm/qti/snpe/NeuralNetwork$PerformanceProfile;->ordinal:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 323
    iget v2, p4, Lcom/qualcomm/qti/snpe/NeuralNetwork$ExecutionPriorityHint;->ordinal:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeStrings(Ljava/util/Collection;)V

    .line 325
    invoke-virtual {v0, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 326
    invoke-virtual {v0, p5}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 327
    invoke-virtual {v0, p6}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeBoolean(Z)V

    .line 328
    invoke-interface {p7}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 329
    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 330
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 331
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-virtual {v0, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    goto :goto_0

    .line 333
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[I>;"
    :cond_0
    return-object v0
.end method

.method private doRelease()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 287
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 288
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeRelease(J)V

    .line 289
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 291
    :cond_0
    return-void
.end method

.method private init(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;Ljava/util/Set;Z)V
    .locals 4
    .param p1, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .param p3, "isDebugEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "outputLayerNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object v0

    .line 82
    .local v0, "outputBundle":Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    .line 83
    invoke-static {v0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    .line 84
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 85
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-direct {v1, v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;-><init>(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)V

    iput-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    .line 86
    iput-object p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .line 87
    iput-boolean p3, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    .line 89
    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    invoke-static {v1, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertSelectedOutputLayer(Ljava/util/Set;Ljava/util/Set;)V

    .line 90
    return-void
.end method

.method public static isRuntimeAvailable(Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;)Z
    .locals 2
    .param p0, "runtime"    # Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    .prologue
    .line 51
    sget-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    iget v1, p0, Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;->ordinal:I

    invoke-static {v1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeIsRuntimeAvailable(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_0
    sget-object v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mRuntimeAvailability:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private native nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeGetModelMetadata(J)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private native nativeInitFromBuffer(JLjava/nio/ByteBuffer;I)J
.end method

.method private native nativeInitFromFile(Ljava/lang/String;Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nativeIsRuntimeAvailable(I)Z
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
.end method

.method private static readOutputLayerNames(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Set;
    .locals 4
    .param p0, "modelMetadata"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 295
    .local v2, "outputNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    .line 296
    .local v1, "layersCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_0
    return-object v2
.end method

.method private readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;
    .locals 6
    .param p1, "outputBundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 338
    .local v2, "outputsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/qti/snpe/FloatTensor;>;"
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    .line 339
    .local v1, "outputCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 340
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;

    move-result-object v3

    .line 341
    .local v3, "tuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/qualcomm/qti/snpe/FloatTensor;>;"
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v3    # "tuple":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/qualcomm/qti/snpe/FloatTensor;>;"
    :cond_0
    return-object v2
.end method

.method private readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z
    .locals 4
    .param p1, "outputBundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/qualcomm/qti/snpe/UserBufferTensor;>;"
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v2

    .line 358
    .local v2, "outputCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 359
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    const/4 v3, 0x0

    .line 366
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    return v3

    .line 364
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, p1, v3}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private readTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Landroid/util/Pair;
    .locals 7
    .param p1, "outputBundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 347
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readIntArray()[I

    move-result-object v2

    .line 349
    .local v2, "shape":[I
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloatArray()[F

    move-result-object v0

    .line 350
    .local v0, "data":[F
    new-instance v3, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {v3, v2}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    .line 351
    .local v3, "tensor":Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;
    array-length v4, v0

    new-array v5, v6, [I

    invoke-virtual {v3, v0, v6, v4, v5}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->write([FII[I)V

    .line 352
    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4
.end method

.method private readUserBufferTensor(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V
    .locals 3
    .param p1, "outputBundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    .param p2, "outputTensor"    # Lcom/qualcomm/qti/snpe/UserBufferTensor;

    .prologue
    .line 371
    invoke-virtual {p2}, Lcom/qualcomm/qti/snpe/UserBufferTensor;->getEncoding()Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;->TF8:Lcom/qualcomm/qti/snpe/UserBufferTensor$Encoding;

    if-ne v1, v2, :cond_1

    .line 372
    instance-of v1, p2, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    if-nez v1, :cond_0

    .line 373
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UserBuffer tensor encodings do not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_0
    const-class v1, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    .line 377
    .local v0, "tf8Tensor":Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    .line 378
    invoke-virtual {p1}, Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    .line 380
    .end local v0    # "tf8Tensor":Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;
    :cond_1
    return-void
.end method

.method private writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .param p1, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "tensorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    .line 385
    .local v2, "inputsCount":I
    invoke-virtual {p1, v2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 386
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 387
    .local v1, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 388
    .local v3, "name":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {p0, p1, v3, v4}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private writeTensor(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "tensor"    # Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    .prologue
    .line 396
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getNativeHandle()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 397
    invoke-virtual {p1, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p3}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 400
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 401
    return-object v0
.end method

.method private writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V
    .locals 6
    .param p1, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p2, "tensorMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/qualcomm/qti/snpe/UserBufferTensor;>;"
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    .line 407
    .local v0, "inputsCount":I
    invoke-virtual {p1, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 408
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 409
    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;

    invoke-interface {v2}, Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeLong(J)V

    .line 410
    invoke-virtual {p1, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs createFloatTensor([I)Lcom/qualcomm/qti/snpe/FloatTensor;
    .locals 4
    .param p1, "shape"    # [I

    .prologue
    .line 182
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Tensor shape can not be null or empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v0, p1, v1

    .line 187
    .local v0, "dim":I
    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    .line 188
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shape dimension can not be < 1!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    .end local v0    # "dim":I
    :cond_3
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-direct {v1, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;-><init>([I)V

    return-object v1
.end method

.method public createTF8UserBufferTensor(I[IIFLjava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
    .locals 7
    .param p1, "size"    # I
    .param p2, "strides"    # [I
    .param p3, "stepExactly0"    # I
    .param p4, "quantizedStepSize"    # F
    .param p5, "userBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 198
    if-gtz p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size has to be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget v6, p2, v0

    .line 203
    .local v6, "stride":I
    const/4 v2, 0x1

    if-ge v6, v2, :cond_1

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strides can not be less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 208
    .end local v6    # "stride":I
    :cond_2
    if-ltz p3, :cond_3

    const/16 v0, 0xff

    if-le p3, v0, :cond_4

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step representing 0.0 has to be a valid 8-bit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_4
    float-to-double v0, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_5

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Step size has to be a positive value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_5
    if-nez p5, :cond_6

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer must be allocated, not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_6
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;-><init>(I[IIFLjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public execute(Ljava/util/Map;)Ljava/util/Map;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/qti/snpe/FloatTensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "inputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/qti/snpe/FloatTensor;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    new-instance v3, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string v4, "Input tensor map can not be null or empty!"

    invoke-direct {v3, v4}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    :cond_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v13, "nativeTensorsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 123
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/qualcomm/qti/snpe/Tensor;

    .line 124
    .local v15, "tensor":Lcom/qualcomm/qti/snpe/Tensor;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/Tensor;)V

    .line 125
    const-class v4, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;

    invoke-virtual {v4, v15}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v12    # "name":Ljava/lang/String;
    .end local v15    # "tensor":Lcom/qualcomm/qti/snpe/Tensor;
    :cond_2
    new-instance v9, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v9}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 129
    .local v9, "bundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeInputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "buffers":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v9}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 133
    .local v6, "bundleBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 134
    .local v16, "start":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    .line 135
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/nio/ByteBuffer;

    move-object/from16 v3, p0

    .line 134
    invoke-direct/range {v3 .. v8}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeForward(JLjava/nio/ByteBuffer;I[Ljava/nio/ByteBuffer;)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object v14

    .line 136
    .local v14, "outputBundle":Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 138
    .local v10, "end":J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v3, :cond_3

    .line 139
    const-string v3, "snpe-android"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network forward took "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v18, v10, v16

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;)Ljava/util/Map;

    move-result-object v3

    return-object v3
.end method

.method public execute(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/qualcomm/qti/snpe/UserBufferTensor;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "inputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/qualcomm/qti/snpe/UserBufferTensor;>;"
    .local p2, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/qualcomm/qti/snpe/UserBufferTensor;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 148
    :cond_0
    new-instance v8, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string v9, "Input tensor map can not be null or empty!"

    invoke-direct {v8, v9}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v8

    .line 151
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    :cond_2
    new-instance v8, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;

    const-string v9, "Output tensor map can not be null or empty"

    invoke-direct {v8, v9}, Lcom/qualcomm/qti/snpe/NeuralNetwork$InvalidInput;-><init>(Ljava/lang/String;)V

    throw v8

    .line 155
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 156
    .local v4, "name":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v4, v8}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertInputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_0

    .line 159
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 160
    .restart local v4    # "name":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/qti/snpe/UserBufferTensor;

    invoke-direct {p0, v4, v8}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->assertOutputTensor(Ljava/lang/String;Lcom/qualcomm/qti/snpe/UserBufferTensor;)V

    goto :goto_1

    .line 163
    .end local v4    # "name":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 164
    .local v0, "bundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 165
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->writeUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;Ljava/util/Map;)V

    .line 167
    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 169
    .local v1, "bundleBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 170
    .local v6, "start":J
    iget-wide v8, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    invoke-direct {p0, v8, v9, v1, v10}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->nativeUserBufferForward(JLjava/nio/ByteBuffer;I)Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;

    move-result-object v5

    .line 171
    .local v5, "outputBundle":Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 173
    .local v2, "end":J
    iget-boolean v8, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mIsDebugEnabled:Z

    if-eqz v8, :cond_6

    .line 174
    const-string v8, "snpe-android"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Network forward took "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v2, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    invoke-direct {p0, v5, p2}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->readOutputUserBufferTensors(Lcom/qualcomm/qti/snpe/internal/util/JniOutputBundle;Ljava/util/Map;)Z

    move-result v8

    return v8
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 280
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 281
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V

    .line 282
    return-void
.end method

.method public getInputTensorsNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getInputTensorsShapes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getModelVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mModelVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputLayers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputLayerNames:Ljava/util/Set;

    return-object v0
.end method

.method public getOutputTensorsNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getOutputTensorsShapes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->getTensorShapes()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getRuntime()Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mTargetRuntime:Lcom/qualcomm/qti/snpe/NeuralNetwork$Runtime;

    return-object v0
.end method

.method public getTensorAttributes(Ljava/lang/String;)Lcom/qualcomm/qti/snpe/TensorAttributes;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mInputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    .line 248
    :goto_0
    return-object v0

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mOutputTensors:Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;

    invoke-virtual {v0, p1}, Lcom/qualcomm/qti/snpe/internal/TensorAttributesMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/qti/snpe/TensorAttributes;

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network has no tensor with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeNetwork;->doRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    monitor-exit p0

    return-void
.end method
