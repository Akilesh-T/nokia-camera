.class public Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;
.super Ljava/lang/Object;
.source "GLBgMatrix.java"


# instance fields
.field private final bgTexture:I

.field private final mFragmentShader:Ljava/lang/String;

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field protected mGLProgId:I

.field protected mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mGLUniformTexture:I

.field protected mIsInitialized:Z

.field protected mTextureTransformMatrix:[F

.field protected mTextureTransformMatrixLocation:I

.field private final mVertexShader:Ljava/lang/String;

.field private final texturePoint:[F

.field private final vertexPoint:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resBackground"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->vertexPoint:[F

    .line 42
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->texturePoint:[F

    .line 51
    invoke-static {p1, p2}, Lcom/android/camera/opengl/effect/animoji/AnimojiOpenGlUtils;->loadTexture(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->bgTexture:I

    .line 52
    const v1, 0x7f070003

    .line 53
    .local v1, "vertex":I
    const/high16 v0, 0x7f070000

    .line 54
    .local v0, "fragment":I
    invoke-static {p1, v1}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mVertexShader:Ljava/lang/String;

    .line 55
    invoke-static {p1, v0}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mFragmentShader:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->vertexPoint:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 60
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->vertexPoint:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->texturePoint:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 63
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 65
    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->texturePoint:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->init()V

    .line 67
    return-void

    .line 35
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 42
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected bindTexture(I)V
    .locals 1
    .param p1, "textureId"    # I

    .prologue
    .line 123
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 124
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 125
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mIsInitialized:Z

    .line 90
    return-void
.end method

.method public draw(Ljava/nio/FloatBuffer;)I
    .locals 8
    .param p1, "floatBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 94
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mIsInitialized:Z

    if-nez v0, :cond_0

    move v0, v6

    .line 118
    :goto_0
    return v0

    .line 99
    :cond_0
    iput-object p1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 100
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribPosition:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribTextureCoordinate:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 106
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 107
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mTextureTransformMatrixLocation:I

    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mTextureTransformMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 109
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->bgTexture:I

    if-eq v0, v6, :cond_1

    .line 110
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->bgTexture:I

    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->bindTexture(I)V

    .line 111
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 114
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 115
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 116
    iget v0, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 117
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move v0, v7

    .line 118
    goto :goto_0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 70
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 71
    .local v0, "sm":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->setTextureTransformMatrix([F)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mVertexShader:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mFragmentShader:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/camera/opengl/util/OpenglUtil;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    .line 75
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    const-string v2, "position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribPosition:I

    .line 76
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    const-string v2, "inputImageTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLUniformTexture:I

    .line 77
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    const-string v2, "inputTextureCoordinate"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLAttribTextureCoordinate:I

    .line 79
    iget v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mGLProgId:I

    const-string v2, "textureTransform"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mTextureTransformMatrixLocation:I

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mIsInitialized:Z

    .line 82
    return-void
.end method

.method public setTextureTransformMatrix([F)V
    .locals 0
    .param p1, "mtx"    # [F

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/camera/opengl/effect/animoji/GLBgMatrix;->mTextureTransformMatrix:[F

    .line 86
    return-void
.end method
