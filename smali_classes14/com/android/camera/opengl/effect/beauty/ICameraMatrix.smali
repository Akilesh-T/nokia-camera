.class public Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;
.super Ljava/lang/Object;
.source "ICameraMatrix.java"


# instance fields
.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field private final mFragmentShader:Ljava/lang/String;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field private mFrameHeight:I

.field private mFrameWidth:I

.field protected mGLAttribPosition:I

.field protected mGLAttribTextureCoordinate:I

.field protected mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field protected mGLProgId:I

.field protected mGLTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mGLUniformTexture:I

.field protected mIsInitialized:Z

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field private mTextureTransformMatrix:[F

.field private mTextureTransformMatrixLocation:I

.field private final mVertexShader:Ljava/lang/String;

.field private final texturePoint:[F

.field private final vertexPoint:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v3, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    .line 39
    iput-object v3, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    .line 40
    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameWidth:I

    .line 41
    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameHeight:I

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->vertexPoint:[F

    .line 58
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->texturePoint:[F

    .line 66
    const v0, 0x7f070008

    invoke-static {p1, v0}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mVertexShader:Ljava/lang/String;

    .line 67
    const v0, 0x7f070007

    invoke-static {p1, v0}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFragmentShader:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->vertexPoint:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 72
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->vertexPoint:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->texturePoint:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrix:[F

    .line 82
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private bindFrameBuffer(IIII)V
    .locals 9
    .param p1, "textureId"    # I
    .param p2, "frameBuffer"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 241
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 242
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 244
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 246
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 248
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 250
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 253
    const v0, 0x8d40

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 254
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 257
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 258
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 259
    return-void
.end method

.method public static getExternalOESTextureID()I
    .locals 6

    .prologue
    const v5, 0x812f

    const/4 v1, 0x1

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 275
    new-array v0, v1, [I

    .line 277
    .local v0, "texture":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 278
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 279
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 281
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 283
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 285
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 288
    aget v1, v0, v3

    return v1
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    .line 125
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 126
    return-void
.end method

.method public destroyFramebuffers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 262
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 264
    iput-object v4, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 268
    iput-object v4, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    .line 270
    :cond_1
    iput v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameWidth:I

    .line 271
    iput v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameHeight:I

    .line 272
    return-void
.end method

.method public init(Z)V
    .locals 1
    .param p1, "isFontCamera"    # Z

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->onInit()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    .line 96
    return-void
.end method

.method public initCameraFrameBuffer(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 223
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameHeight:I

    if-eq v0, p2, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->destroyFramebuffers()V

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    if-nez v0, :cond_2

    .line 226
    iput p1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameWidth:I

    .line 227
    iput p2, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameHeight:I

    .line 228
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    .line 229
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    .line 231
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->bindFrameBuffer(IIII)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    aget v1, v1, v3

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->bindFrameBuffer(IIII)V

    .line 237
    :cond_2
    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mDisplayWidth:I

    .line 115
    iput p2, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mDisplayHeight:I

    .line 116
    return-void
.end method

.method public onDrawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 8
    .param p1, "textureId"    # I
    .param p2, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 154
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 155
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_0

    move v0, v6

    .line 177
    :goto_0
    return v0

    .line 158
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 160
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 162
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 163
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 164
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 165
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrixLocation:I

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 167
    if-eq p1, v6, :cond_1

    .line 168
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 169
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 170
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 173
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 174
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 175
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move v0, v7

    .line 177
    goto :goto_0
.end method

.method public onDrawPicture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/16 v2, 0x1406

    const/16 v6, 0xde1

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 130
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 131
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 136
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 137
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 138
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 139
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 141
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 142
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 143
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 144
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 145
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 147
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 148
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 149
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 150
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0
.end method

.method public onDrawToTexture(I)I
    .locals 8
    .param p1, "textureId"    # I

    .prologue
    const/16 v2, 0x1406

    const/4 v1, 0x2

    const v7, 0x84c0

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    if-nez v0, :cond_0

    move v0, v6

    .line 219
    :goto_0
    return v0

    .line 184
    :cond_0
    const v0, 0x8d40

    iget-object v4, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBuffers:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 186
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mOutputWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mOutputHeight:I

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 187
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 188
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_1

    move v0, v6

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 194
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 197
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 199
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrixLocation:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 201
    if-eq p1, v6, :cond_2

    .line 202
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 203
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 204
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 207
    :cond_2
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 209
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 210
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 211
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 212
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 215
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 219
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v3

    goto/16 :goto_0
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/util/OpenglUtil;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    .line 101
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribPosition:I

    .line 102
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLUniformTexture:I

    .line 103
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLAttribTextureCoordinate:I

    .line 105
    iget v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mGLProgId:I

    const-string v1, "textureTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrixLocation:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mIsInitialized:Z

    .line 107
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mOutputWidth:I

    .line 120
    iput p2, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mOutputHeight:I

    .line 121
    return-void
.end method

.method public setTextureTransformMatrix([F)V
    .locals 0
    .param p1, "mtx"    # [F

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/opengl/effect/beauty/ICameraMatrix;->mTextureTransformMatrix:[F

    .line 111
    return-void
.end method
