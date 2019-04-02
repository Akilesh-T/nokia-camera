.class final Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;
.super Lcom/qualcomm/qti/snpe/FloatTensor;
.source "NativeFloatTensor.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final JNI_ERROR:I = -0x1


# instance fields
.field private final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mFloatBufferView:Ljava/nio/FloatBuffer;

.field private mNativeHandle:J


# direct methods
.method constructor <init>([I)V
    .locals 6
    .param p1, "shape"    # [I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/snpe/FloatTensor;-><init>([I)V

    .line 30
    new-instance v1, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;

    invoke-direct {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;-><init>()V

    .line 31
    .local v1, "bundle":Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    invoke-static {v1, p1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V

    .line 33
    invoke-virtual {v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->marshall()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeInit(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    .line 35
    iget-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to create native tensor!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->sizeOf([I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 40
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 41
    iget-object v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    .line 42
    return-void
.end method

.method private doRelease()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 99
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->nativeRelease(J)V

    .line 100
    iput-wide v2, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    .line 102
    :cond_0
    return-void
.end method

.method private native nativeInit(Ljava/nio/ByteBuffer;I)J
.end method

.method private native nativeRelease(J)V
.end method

.method private static writeShape(Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;[I)V
    .locals 3
    .param p0, "bundle"    # Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;
    .param p1, "shape"    # [I

    .prologue
    .line 45
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 46
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 47
    .local v0, "dim":I
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/snpe/internal/util/JniInputBundle;->writeInt(I)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "dim":I
    :cond_0
    return-void
.end method


# virtual methods
.method asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mByteBuffer:Ljava/nio/ByteBuffer;

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
    .line 84
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V

    .line 86
    return-void
.end method

.method getNativeHandle()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    return-wide v0
.end method

.method public varargs read([I)F
    .locals 2
    .param p1, "position"    # [I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 78
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p1}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    return v0
.end method

.method public varargs read([FII[I)I
    .locals 2
    .param p1, "value"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "position"    # [I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 72
    return p3
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FloatTensor instance already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 93
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->doRelease()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    monitor-exit p0

    return-void
.end method

.method public varargs write(F[I)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "position"    # [I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 63
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 65
    return-void
.end method

.method public varargs write([FII[I)V
    .locals 2
    .param p1, "value"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "position"    # [I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 56
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->getShape()[I

    move-result-object v1

    invoke-static {v1, p4}, Lcom/qualcomm/qti/snpe/internal/TensorUtil;->position([I[I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 57
    iget-object v0, p0, Lcom/qualcomm/qti/snpe/internal/NativeFloatTensor;->mFloatBufferView:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    .line 58
    return-void
.end method
