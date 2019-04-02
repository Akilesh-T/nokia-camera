.class final Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;
.super Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;
.source "NativeTF8UserBufferTensor.java"

# interfaces
.implements Lcom/qualcomm/qti/snpe/internal/NativeUserBufferHandle;


# static fields
.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private mNativeHandle:J

.field private mQuantizedStepSize:F

.field private mStepExactly0:I


# direct methods
.method constructor <init>(I[IIFLjava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "size"    # I
    .param p2, "strides"    # [I
    .param p3, "stepExactly0"    # I
    .param p4, "quantizedStepSize"    # F
    .param p5, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/snpe/TF8UserBufferTensor;-><init>(I[I)V

    .line 30
    invoke-virtual {p0, p3}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setStepExactly0(I)V

    .line 31
    invoke-virtual {p0, p4}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->setQuantizedStepSize(F)V

    .line 33
    iput-object p5, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 34
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ByteBuffer is not a direct buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 39
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ByteBuffer has a different byte order than that of underlying platform"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 43
    .local v1, "bundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    invoke-virtual {v1, p1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 44
    invoke-virtual {v1, p2}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInts([I)V

    .line 45
    invoke-virtual {v1, p3}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 46
    invoke-virtual {v1, p4}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeFloat(F)V

    .line 48
    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 49
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-direct {p0, v0, v2, p5}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    .line 50
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to create native tensor!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_2
    return-void
.end method

.method private doRelease()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 91
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 92
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->nativeRelease(J)V

    .line 93
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    .line 95
    :cond_0
    return-void
.end method

.method private native nativeInit(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;)J
.end method

.method private native nativeRelease(J)V
.end method


# virtual methods
.method asDirectByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V

    .line 78
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    return-void
.end method

.method public getNativeHandle()J
    .locals 2

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public getQuantizedStepSize()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    return v0
.end method

.method public getStepExactly0()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    return v0
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TF8UserBufferTensor instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->doRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    monitor-exit p0

    return-void
.end method

.method public setQuantizedStepSize(F)V
    .locals 0
    .param p1, "quantizedStepSize"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mQuantizedStepSize:F

    .line 61
    return-void
.end method

.method public setStepExactly0(I)V
    .locals 0
    .param p1, "stepExactly0"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/qualcomm/qti/snpe/internal/NativeTF8UserBufferTensor;->mStepExactly0:I

    .line 57
    return-void
.end method
