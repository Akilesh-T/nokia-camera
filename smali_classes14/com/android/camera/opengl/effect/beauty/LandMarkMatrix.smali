.class public Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;
.super Ljava/lang/Object;
.source "LandMarkMatrix.java"


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private inited:Z

.field private final mFragmentShader:Ljava/lang/String;

.field protected mFrameBuffers:[I

.field private mGLAttribPosition:I

.field private mGLProgId:I

.field private final mVertexShader:Ljava/lang/String;

.field private volatile points:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mFrameBuffers:[I

    .line 29
    const/16 v0, 0xa2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    .line 31
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 34
    const-string v0, "attribute vec2 aPosition;\nvoid main()\n{\n  gl_Position = vec4(aPosition,1.0,1.0);\n  gl_PointSize = 10.0;\n}"

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mVertexShader:Ljava/lang/String;

    .line 40
    const-string v0, "precision mediump float;\nvoid main()\n{\n\tgl_FragColor = vec4(1.0,0.0,0.0, 1.0);\n}"

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mFragmentShader:Ljava/lang/String;

    return-void
.end method

.method private checkInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->inited:Z

    if-nez v0, :cond_0

    .line 89
    iput-boolean v2, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->inited:Z

    .line 90
    const-string v0, "attribute vec2 aPosition;\nvoid main()\n{\n  gl_Position = vec4(aPosition,1.0,1.0);\n  gl_PointSize = 10.0;\n}"

    const-string v1, "precision mediump float;\nvoid main()\n{\n\tgl_FragColor = vec4(1.0,0.0,0.0, 1.0);\n}"

    invoke-static {v0, v1}, Lcom/android/camera/opengl/util/OpenglUtil;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLProgId:I

    .line 91
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLProgId:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLAttribPosition:I

    .line 92
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mFrameBuffers:[I

    .line 93
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mFrameBuffers:[I

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 95
    :cond_0
    return-void
.end method

.method private getLandMarks(II)[F
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 105
    const/16 v2, 0xa2

    new-array v1, v2, [F

    .line 106
    .local v1, "result":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    aget v2, v2, v0

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    aput v2, v1, v0

    .line 108
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    sub-float/2addr v3, v5

    aput v3, v1, v2

    .line 106
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method


# virtual methods
.method public drawLandMark(III)V
    .locals 8
    .param p1, "textureId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const v7, 0x8d40

    const/4 v3, 0x0

    .line 62
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->checkInit()V

    .line 66
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mFrameBuffers:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 67
    const v0, 0x8ce0

    const/16 v1, 0xde1

    invoke-static {v7, v0, v1, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 69
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->getLandMarks(II)[F

    move-result-object v6

    .line 71
    .local v6, "points":[F
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 72
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 73
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->mGLAttribPosition:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->byteBuffer:Ljava/nio/ByteBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 79
    array-length v0, v6

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 80
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 81
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_0
.end method

.method public setPoints([I)V
    .locals 1
    .param p1, "points"    # [I

    .prologue
    .line 52
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/LandMarkMatrix;->points:[I

    .line 53
    return-void
.end method
