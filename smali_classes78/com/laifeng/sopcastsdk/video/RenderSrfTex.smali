.class public Lcom/laifeng/sopcastsdk/video/RenderSrfTex;
.super Ljava/lang/Object;
.source "RenderSrfTex.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mFboTexId:I

.field private final mNormalMtx:[F

.field private final mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

.field private final mNormalVtxBuf:Ljava/nio/FloatBuffer;

.field private mProgram:I

.field private final mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

.field private mSavedEglContext:Landroid/opengl/EGLContext;

.field private mSavedEglDisplay:Landroid/opengl/EGLDisplay;

.field private mSavedEglDrawSurface:Landroid/opengl/EGLSurface;

.field private mSavedEglReadSurface:Landroid/opengl/EGLSurface;

.field private final mSymmetryMtx:[F

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWatermarkImg:Landroid/graphics/Bitmap;

.field private mWatermarkTextureId:I

.field private mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoordHandle:I

.field private muPosMtxHandle:I

.field private muSamplerHandle:I


# direct methods
.method public constructor <init>(ILcom/laifeng/sopcastsdk/video/MyRecorder;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "recorder"    # Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    .line 34
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createTexCoordBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    .line 39
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSymmetryMtx:[F

    .line 40
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalMtx:[F

    .line 42
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    .line 43
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    .line 44
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    .line 45
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muSamplerHandle:I

    .line 46
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    .line 48
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDisplay:Landroid/opengl/EGLDisplay;

    .line 49
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDrawSurface:Landroid/opengl/EGLSurface;

    .line 50
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglReadSurface:Landroid/opengl/EGLSurface;

    .line 51
    iput-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglContext:Landroid/opengl/EGLContext;

    .line 53
    iput v3, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    .line 54
    iput v3, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    .line 60
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkTextureId:I

    .line 63
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mFboTexId:I

    .line 64
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    .line 65
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

    .line 238
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkImg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 241
    :cond_0
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalMtx:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 243
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 245
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 247
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalTexCoordBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 250
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 252
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkTextureId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 253
    new-array v6, v8, [I

    .line 254
    .local v6, "textures":[I
    invoke-static {v8, v6, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 255
    aget v0, v6, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 256
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkImg:Landroid/graphics/Bitmap;

    invoke-static {v7, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 257
    const/16 v0, 0x2801

    const/16 v1, 0x2601

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 259
    const/16 v0, 0x2800

    const/16 v1, 0x2601

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 261
    const/16 v0, 0x2802

    const v1, 0x812f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 263
    const/16 v0, 0x2803

    const v1, 0x812f

    invoke-static {v7, v0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 265
    aget v0, v6, v3

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkTextureId:I

    .line 267
    .end local v6    # "textures":[I
    :cond_1
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 269
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 270
    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 272
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 273
    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_0
.end method

.method private initCameraTexCoordBuffer()V
    .locals 13

    .prologue
    .line 132
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v1

    .line 133
    .local v1, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget v9, v1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 134
    .local v9, "width":I
    iget v5, v1, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 135
    .local v5, "height":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 136
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 137
    .local v3, "cameraWidth":I
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 142
    .local v2, "cameraHeight":I
    :goto_0
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v4, v10, v11

    .line 143
    .local v4, "hRatio":F
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v10, v10

    int-to-float v11, v2

    div-float v7, v10, v11

    .line 146
    .local v7, "vRatio":F
    cmpl-float v10, v4, v7

    if-lez v10, :cond_1

    .line 147
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v10, v10

    int-to-float v11, v2

    mul-float/2addr v11, v4

    div-float v6, v10, v11

    .line 148
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

    .line 155
    .local v8, "vtx":[F
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 158
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 159
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    :goto_1
    return-void

    .line 139
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

    .line 140
    .restart local v3    # "cameraWidth":I
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "cameraHeight":I
    goto :goto_0

    .line 161
    .restart local v4    # "hRatio":F
    .restart local v7    # "vRatio":F
    :cond_1
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v10, v10

    int-to-float v11, v3

    mul-float/2addr v11, v7

    div-float v6, v10, v11

    .line 162
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

    .line 169
    .restart local v8    # "vtx":[F
    array-length v10, v8

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 170
    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 172
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1
.end method

.method private initGL()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 277
    const-string v2, "initGL_S"

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 279
    const-string v1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvarying   vec2 textureCoordinate;\nuniform   mat4 uPosMtx;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = inputTextureCoordinate.xy;\n}\n"

    .line 289
    .local v1, "vertexShader":Ljava/lang/String;
    const-string v0, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2 textureCoordinate;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, textureCoordinate);\n}\n"

    .line 297
    .local v0, "fragmentShader":Ljava/lang/String;
    const-string v2, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nvarying   vec2 textureCoordinate;\nuniform   mat4 uPosMtx;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = inputTextureCoordinate.xy;\n}\n"

    const-string v3, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2 textureCoordinate;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, textureCoordinate);\n}\n"

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    .line 298
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    .line 299
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    const-string v3, "inputTextureCoordinate"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    .line 300
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    const-string v3, "uSampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muSamplerHandle:I

    .line 301
    iget v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    const-string v3, "uPosMtx"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    .line 303
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSymmetryMtx:[F

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v3, v4, v5, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 305
    const/16 v2, 0xb71

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 306
    const/16 v2, 0xb44

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 307
    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 309
    const-string v2, "initGL_E"

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private initWatermarkVertexBuffer(IIIII)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # I
    .param p4, "vMargin"    # I
    .param p5, "hMargin"    # I

    .prologue
    .line 79
    const/4 v10, 0x1

    move/from16 v0, p3

    if-eq v0, v10, :cond_0

    const/4 v10, 0x2

    move/from16 v0, p3

    if-ne v0, v10, :cond_4

    .line 81
    :cond_0
    const/4 v4, 0x1

    .line 86
    .local v4, "isTop":Z
    :goto_0
    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_1

    const/4 v10, 0x4

    move/from16 v0, p3

    if-ne v0, v10, :cond_5

    .line 88
    :cond_1
    const/4 v3, 0x1

    .line 93
    .local v3, "isRight":Z
    :goto_1
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    sub-float/2addr v10, v11

    int-to-float v11, p1

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float v5, v10, v11

    .line 94
    .local v5, "leftX":F
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p5

    int-to-float v11, v0

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float v6, v10, v11

    .line 96
    .local v6, "rightX":F
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p4

    int-to-float v11, v0

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float v8, v10, v11

    .line 97
    .local v8, "topY":F
    iget v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move/from16 v0, p4

    int-to-float v11, v0

    sub-float/2addr v10, v11

    int-to-float v11, p2

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    int-to-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    div-float v2, v10, v11

    .line 101
    .local v2, "bottomY":F
    if-nez v3, :cond_2

    .line 102
    move v7, v5

    .line 103
    .local v7, "temp":F
    neg-float v5, v6

    .line 104
    neg-float v6, v7

    .line 106
    .end local v7    # "temp":F
    :cond_2
    if-nez v4, :cond_3

    .line 107
    move v7, v8

    .line 108
    .restart local v7    # "temp":F
    neg-float v8, v2

    .line 109
    neg-float v2, v7

    .line 111
    .end local v7    # "temp":F
    :cond_3
    const/16 v10, 0xc

    new-array v9, v10, [F

    const/4 v10, 0x0

    aput v5, v9, v10

    const/4 v10, 0x1

    aput v2, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x3

    aput v5, v9, v10

    const/4 v10, 0x4

    aput v8, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x6

    aput v6, v9, v10

    const/4 v10, 0x7

    aput v2, v9, v10

    const/16 v10, 0x8

    const/4 v11, 0x0

    aput v11, v9, v10

    const/16 v10, 0x9

    aput v6, v9, v10

    const/16 v10, 0xa

    aput v8, v9, v10

    const/16 v10, 0xb

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 117
    .local v9, "watermarkCoords":[F
    array-length v10, v9

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 118
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 119
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    .line 120
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v9}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 121
    iget-object v10, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    return-void

    .line 83
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "bottomY":F
    .end local v3    # "isRight":Z
    .end local v4    # "isTop":Z
    .end local v5    # "leftX":F
    .end local v6    # "rightX":F
    .end local v8    # "topY":F
    .end local v9    # "watermarkCoords":[F
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isTop":Z
    goto/16 :goto_0

    .line 90
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isRight":Z
    goto/16 :goto_1
.end method

.method private restoreRenderState()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDrawSurface:Landroid/opengl/EGLSurface;

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglReadSurface:Landroid/opengl/EGLSurface;

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglMakeCurrent failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method private saveRenderState()V
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDisplay:Landroid/opengl/EGLDisplay;

    .line 314
    const/16 v0, 0x3059

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglDrawSurface:Landroid/opengl/EGLSurface;

    .line 315
    const/16 v0, 0x305a

    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetCurrentSurface(I)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglReadSurface:Landroid/opengl/EGLSurface;

    .line 316
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSavedEglContext:Landroid/opengl/EGLContext;

    .line 317
    return-void
.end method


# virtual methods
.method public draw()V
    .locals 9

    .prologue
    const/16 v2, 0x1406

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->saveRenderState()V

    .line 180
    const-string v0, "draw_S"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->firstTimeSetup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->startSwapData()V

    .line 184
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->makeCurrent()V

    .line 185
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->initGL()V

    .line 190
    :goto_0
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    invoke-static {v3, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 192
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 193
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 195
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 197
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalVtxBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 200
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 202
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    const/4 v1, 0x2

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mCameraTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 205
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 207
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muSamplerHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 210
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v6

    .line 211
    .local v6, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    if-eqz v6, :cond_0

    .line 212
    iget v7, v6, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraFacing:I

    .line 213
    .local v7, "facing":I
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    if-ltz v0, :cond_0

    .line 214
    if-ne v7, v8, :cond_2

    .line 215
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mSymmetryMtx:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 221
    .end local v7    # "facing":I
    :cond_0
    :goto_1
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 222
    const/16 v0, 0xde1

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mFboTexId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 224
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 227
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->drawWatermark()V

    .line 229
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->swapBuffers()V

    .line 231
    const-string v0, "draw_E"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->restoreRenderState()V

    .line 234
    return-void

    .line 187
    .end local v6    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    :cond_1
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mRecorder:Lcom/laifeng/sopcastsdk/video/MyRecorder;

    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/video/MyRecorder;->makeCurrent()V

    goto/16 :goto_0

    .line 217
    .restart local v6    # "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    .restart local v7    # "facing":I
    :cond_2
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->muPosMtxHandle:I

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mNormalMtx:[F

    invoke-static {v0, v8, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    goto :goto_1
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mFboTexId:I

    .line 69
    return-void
.end method

.method public setVideoSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoWidth:I

    .line 126
    iput p2, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mVideoHeight:I

    .line 127
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->initCameraTexCoordBuffer()V

    .line 128
    return-void
.end method

.method public setWatermark(Lcom/laifeng/sopcastsdk/entity/Watermark;)V
    .locals 6
    .param p1, "watermark"    # Lcom/laifeng/sopcastsdk/entity/Watermark;

    .prologue
    .line 72
    iget-object v0, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->markImg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->mWatermarkImg:Landroid/graphics/Bitmap;

    .line 73
    iget v1, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->width:I

    iget v2, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->height:I

    iget v3, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->orientation:I

    iget v4, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->vMargin:I

    iget v5, p1, Lcom/laifeng/sopcastsdk/entity/Watermark;->hMargin:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/laifeng/sopcastsdk/video/RenderSrfTex;->initWatermarkVertexBuffer(IIIII)V

    .line 74
    return-void
.end method
