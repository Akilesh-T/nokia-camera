.class public Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;
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

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v3, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    .line 40
    iput-object v3, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    .line 41
    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameWidth:I

    .line 42
    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameHeight:I

    .line 52
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->vertexPoint:[F

    .line 59
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->texturePoint:[F

    .line 67
    const v0, 0x7f070008

    invoke-static {p1, v0}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mVertexShader:Ljava/lang/String;

    .line 68
    const v0, 0x7f070007

    invoke-static {p1, v0}, Lcom/android/camera/opengl/util/OpenglUtil;->loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFragmentShader:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->vertexPoint:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 73
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->vertexPoint:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    .line 78
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->texturePoint:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 79
    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrix:[F

    .line 83
    return-void

    .line 52
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

    .line 59
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
    .line 242
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 243
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

    .line 245
    const/16 v0, 0xde1

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 247
    const/16 v0, 0xde1

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 249
    const/16 v0, 0xde1

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 251
    const/16 v0, 0xde1

    const/16 v1, 0x2803

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 254
    const v0, 0x8d40

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 255
    const v0, 0x8d40

    const v1, 0x8ce0

    const/16 v2, 0xde1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 258
    const/16 v0, 0xde1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 259
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 260
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

    .line 276
    new-array v0, v1, [I

    .line 278
    .local v0, "texture":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 279
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 280
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 282
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 284
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 286
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 289
    aget v1, v0, v3

    return v1
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    .line 126
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 127
    return-void
.end method

.method public destroyFramebuffers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 263
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 265
    iput-object v4, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 269
    iput-object v4, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    .line 271
    :cond_1
    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameWidth:I

    .line 272
    iput v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameHeight:I

    .line 273
    return-void
.end method

.method public init(Z)V
    .locals 1
    .param p1, "isFontCamera"    # Z

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->onInit()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    .line 97
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

    .line 224
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameHeight:I

    if-eq v0, p2, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->destroyFramebuffers()V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    if-nez v0, :cond_2

    .line 227
    iput p1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameWidth:I

    .line 228
    iput p2, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameHeight:I

    .line 229
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    .line 230
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    .line 232
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 233
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 235
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->bindFrameBuffer(IIII)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    aget v1, v1, v3

    invoke-direct {p0, v0, v1, p2, p1}, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->bindFrameBuffer(IIII)V

    .line 238
    :cond_2
    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mDisplayWidth:I

    .line 116
    iput p2, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mDisplayHeight:I

    .line 117
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

    .line 155
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 156
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_0

    move v0, v6

    .line 178
    :goto_0
    return v0

    .line 159
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 160
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 161
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 163
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 165
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 166
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrixLocation:I

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 168
    if-eq p1, v6, :cond_1

    .line 169
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 170
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 174
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 175
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 177
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    move v0, v7

    .line 178
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

    .line 131
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 132
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 138
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 142
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 143
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 144
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 145
    invoke-static {v6, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 146
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 148
    :cond_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 149
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 150
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 151
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

    .line 182
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    if-nez v0, :cond_0

    move v0, v6

    .line 220
    :goto_0
    return v0

    .line 185
    :cond_0
    const v0, 0x8d40

    iget-object v4, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBuffers:[I

    aget v4, v4, v3

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 187
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mOutputWidth:I

    iget v4, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mOutputHeight:I

    invoke-static {v3, v3, v0, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 188
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 189
    iget-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    if-nez v0, :cond_1

    move v0, v6

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 195
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 196
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    iget-object v5, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLTextureBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 198
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 200
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrixLocation:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrix:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 202
    if-eq p1, v6, :cond_2

    .line 203
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 204
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLUniformTexture:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 208
    :cond_2
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 210
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 211
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 212
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 213
    const v0, 0x8d65

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 215
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 216
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 218
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 220
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFrameBufferTextures:[I

    aget v0, v0, v3

    goto/16 :goto_0
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/opengl/util/OpenglUtil;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    .line 102
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribPosition:I

    .line 103
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLUniformTexture:I

    .line 104
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLAttribTextureCoordinate:I

    .line 106
    iget v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mGLProgId:I

    const-string v1, "textureTransform"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrixLocation:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mIsInitialized:Z

    .line 108
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mOutputWidth:I

    .line 121
    iput p2, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mOutputHeight:I

    .line 122
    return-void
.end method

.method public setTextureTransformMatrix([F)V
    .locals 0
    .param p1, "mtx"    # [F

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/camera/opengl/effect/sticker/cameragl/ICameraMatrix;->mTextureTransformMatrix:[F

    .line 112
    return-void
.end method
