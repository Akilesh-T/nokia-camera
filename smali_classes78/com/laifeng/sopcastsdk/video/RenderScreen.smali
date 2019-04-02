.class public Lcom/laifeng/sopcastsdk/video/RenderScreen;
.super Ljava/lang/Object;
.source "RenderScreen.java"


# instance fields
.field private mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mFboTexId:I

.field private final mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

.field private final mNormalVtxBuf:Ljava/nio/FloatBuffer;

.field private final mPosMtx:[F

.field private mProgram:I

.field private mScreenH:I

.field private mScreenW:I

.field private mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

.field private mWatermarkImg:Landroid/graphics/Bitmap;

.field private mWatermarkRatio:F

.field private mWatermarkTextureId:I

.field private mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoordHandle:I

.field private muPosMtxHandle:I

.field private muSamplerHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    .line 27
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createTexCoordBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    .line 28
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mPosMtx:[F

    .line 32
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    .line 33
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    .line 34
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    .line 35
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muPosMtxHandle:I

    .line 36
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muSamplerHandle:I

    .line 38
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    .line 39
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    .line 46
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkTextureId:I

    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    .line 50
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mFboTexId:I

    .line 51
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->initGL()V

    .line 52
    return-void
.end method

.method private drawWatermark()V
    .locals 10

    .prologue
    const/16 v2, 0x1406

    const/16 v9, 0xbe2

    const/4 v8, 0x1

    const/16 v7, 0xde1

    const/4 v3, 0x0

    .line 221
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkImg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 227
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 229
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 232
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 234
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 235
    new-array v6, v8, [I

    .line 236
    .local v6, "textures":[I
    invoke-static {v8, v6, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 237
    aget v0, v6, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 238
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkImg:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 239
    const/16 v0, 0x2801

    const/16 v1, 0x2601

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 241
    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 243
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 245
    const/16 v0, 0x2803

    const v1, 0x812f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 247
    aget v0, v6, v3

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkTextureId:I

    .line 249
    .end local v6    # "textures":[I
    :cond_1
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 251
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 252
    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 254
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 255
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private initCameraTexCoordBuffer()V
    .locals 13

    .prologue
    .line 74
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v1

    .line 75
    .local v1, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget v9, v1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 76
    .local v9, "width":I
    iget v5, v1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 77
    .local v5, "height":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 78
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 79
    .local v3, "cameraWidth":I
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    .local v2, "cameraHeight":I
    :goto_0
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v4, v10, v11

    .line 86
    .local v4, "hRatio":F
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v10, v10

    int-to-float v11, v2

    div-float v7, v10, v11

    .line 89
    .local v7, "vRatio":F
    cmpl-float v10, v4, v7

    if-lez v10, :cond_1

    .line 90
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v10, v10

    int-to-float v11, v2

    mul-float/2addr v11, v4

    div-float v6, v10, v11

    .line 91
    .local v6, "ratio":F
    const/16 v10, 0x8

    new-array v8, v10, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v8, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v8, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    sub-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x4

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v8, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x6

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v8, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    sub-float/2addr v11, v12

    aput v11, v8, v10

    .line 98
    .local v8, "vtx":[F
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 101
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 102
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    :goto_1
    return-void

    .line 81
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "cameraHeight":I
    .end local v3    # "cameraWidth":I
    .end local v4    # "hRatio":F
    .end local v6    # "ratio":F
    .end local v7    # "vRatio":F
    .end local v8    # "vtx":[F
    :cond_0
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 82
    .restart local v3    # "cameraWidth":I
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "cameraHeight":I
    goto :goto_0

    .line 104
    .restart local v4    # "hRatio":F
    .restart local v7    # "vRatio":F
    :cond_1
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v10, v10

    int-to-float v11, v3

    mul-float/2addr v11, v7

    div-float v6, v10, v11

    .line 105
    .restart local v6    # "ratio":F
    const/16 v10, 0x8

    new-array v8, v10, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    sub-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v8, v10

    const/4 v10, 0x2

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    sub-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v11, v8, v10

    const/4 v10, 0x4

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v8, v10

    const/4 v10, 0x6

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v6, v12

    add-float/2addr v11, v12

    aput v11, v8, v10

    const/4 v10, 0x7

    const/4 v11, 0x0

    aput v11, v8, v10

    .line 112
    .restart local v8    # "vtx":[F
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 114
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 115
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 116
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private initGL()V
    .locals 4

    .prologue
    .line 259
    const-string v2, "initGL_S"

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 261
    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform   mat4 uPosMtx;\nvarying   vec2 textureCoordinate;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = inputTextureCoordinate.xy;\n}\n"

    .line 271
    .local v1, "vertexShader":Ljava/lang/String;
    const-string v0, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2  textureCoordinate;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, textureCoordinate);\n}\n"

    .line 279
    .local v0, "fragmentShader":Ljava/lang/String;
    const-string v2, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform   mat4 uPosMtx;\nvarying   vec2 textureCoordinate;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = inputTextureCoordinate.xy;\n}\n"

    const-string v3, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2  textureCoordinate;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, textureCoordinate);\n}\n"

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    .line 280
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    .line 281
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    const-string v3, "inputTextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    .line 282
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    const-string v3, "uPosMtx"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muPosMtxHandle:I

    .line 283
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    const-string v3, "uSampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muSamplerHandle:I

    .line 285
    const-string v2, "initGL_E"

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private initWatermarkVertexBuffer()V
    .locals 17

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    if-gtz v14, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->width:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    mul-float/2addr v14, v15

    float-to-int v13, v14

    .line 133
    .local v13, "width":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->height:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    mul-float/2addr v14, v15

    float-to-int v4, v14

    .line 134
    .local v4, "height":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->vMargin:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    mul-float/2addr v14, v15

    float-to-int v11, v14

    .line 135
    .local v11, "vMargin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->hMargin:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    mul-float/2addr v14, v15

    float-to-int v3, v14

    .line 138
    .local v3, "hMargin":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 140
    :cond_2
    const/4 v6, 0x1

    .line 145
    .local v6, "isTop":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    const/4 v15, 0x2

    if-eq v14, v15, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    iget v14, v14, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    .line 147
    :cond_3
    const/4 v5, 0x1

    .line 152
    .local v5, "isRight":Z
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v3

    sub-float/2addr v14, v15

    int-to-float v15, v13

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float v7, v14, v15

    .line 153
    .local v7, "leftX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v3

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float v8, v14, v15

    .line 155
    .local v8, "rightX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v11

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float v10, v14, v15

    .line 156
    .local v10, "topY":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    int-to-float v15, v11

    sub-float/2addr v14, v15

    int-to-float v15, v4

    sub-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    int-to-float v15, v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    div-float v2, v14, v15

    .line 160
    .local v2, "bottomY":F
    if-nez v5, :cond_4

    .line 161
    move v9, v7

    .line 162
    .local v9, "temp":F
    neg-float v7, v8

    .line 163
    neg-float v8, v9

    .line 165
    .end local v9    # "temp":F
    :cond_4
    if-nez v6, :cond_5

    .line 166
    move v9, v10

    .line 167
    .restart local v9    # "temp":F
    neg-float v10, v2

    .line 168
    neg-float v2, v9

    .line 170
    .end local v9    # "temp":F
    :cond_5
    const/16 v14, 0xc

    new-array v12, v14, [F

    const/4 v14, 0x0

    aput v7, v12, v14

    const/4 v14, 0x1

    aput v2, v12, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v12, v14

    const/4 v14, 0x3

    aput v7, v12, v14

    const/4 v14, 0x4

    aput v10, v12, v14

    const/4 v14, 0x5

    const/4 v15, 0x0

    aput v15, v12, v14

    const/4 v14, 0x6

    aput v8, v12, v14

    const/4 v14, 0x7

    aput v2, v12, v14

    const/16 v14, 0x8

    const/4 v15, 0x0

    aput v15, v12, v14

    const/16 v14, 0x9

    aput v8, v12, v14

    const/16 v14, 0xa

    aput v10, v12, v14

    const/16 v14, 0xb

    const/4 v15, 0x0

    aput v15, v12, v14

    .line 176
    .local v12, "watermarkCoords":[F
    array-length v14, v12

    mul-int/lit8 v14, v14, 0x4

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 178
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    .line 179
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 142
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "bottomY":F
    .end local v5    # "isRight":Z
    .end local v6    # "isTop":Z
    .end local v7    # "leftX":F
    .end local v8    # "rightX":F
    .end local v10    # "topY":F
    .end local v12    # "watermarkCoords":[F
    :cond_6
    const/4 v6, 0x0

    .restart local v6    # "isTop":Z
    goto/16 :goto_1

    .line 149
    :cond_7
    const/4 v5, 0x0

    .restart local v5    # "isRight":Z
    goto/16 :goto_2
.end method


# virtual methods
.method public draw()V
    .locals 6

    .prologue
    const/16 v2, 0x1406

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 184
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    if-gtz v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v0, "draw_S"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 189
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 191
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 192
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 194
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 196
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 201
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 204
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 206
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muPosMtxHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mPosMtx:[F

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 207
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->muSamplerHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 209
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 210
    const/16 v0, 0xde1

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mFboTexId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 212
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 215
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->drawWatermark()V

    .line 217
    const-string v0, "draw_E"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSreenSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    .line 56
    iput p2, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenH:I

    .line 58
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->initCameraTexCoordBuffer()V

    .line 59
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mFboTexId:I

    .line 63
    return-void
.end method

.method public setVideoSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mScreenW:I

    int-to-float v0, v0

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkRatio:F

    .line 67
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    if-eqz v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->initWatermarkVertexBuffer()V

    .line 70
    :cond_0
    return-void
.end method

.method public setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V
    .locals 1
    .param p1, "watermark"    # Lcom/laifeng/sopcastsdk/entity/Watermark;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermark:Lcom/laifeng/sopcastsdk/entity/Watermark;

    .line 123
    iget-object v0, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->markImg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderScreen;->mWatermarkImg:Landroid/graphics/Bitmap;

    .line 124
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderScreen;->initWatermarkVertexBuffer()V

    .line 125
    return-void
.end method
