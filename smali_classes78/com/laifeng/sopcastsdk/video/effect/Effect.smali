.class public abstract Lcom/laifeng/sopcastsdk/video/effect/Effect;
.super Ljava/lang/Object;
.source "Effect.java"


# instance fields
.field private mAngle:F

.field private final mFboId:[I

.field private mFragment:Ljava/lang/String;

.field private mHeight:I

.field private final mPosMtx:[F

.field private mProgram:I

.field private final mRboId:[I

.field private final mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexId:[I

.field protected mTextureId:I

.field private mVertex:Ljava/lang/String;

.field private final mVtxBuf:Ljava/nio/FloatBuffer;

.field private mWidth:I

.field private maPositionHandle:I

.field private maTexCoordHandle:I

.field private muPosMtxHandle:I

.field private muTexMtxHandle:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createSquareVtx()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVtxBuf:Ljava/nio/FloatBuffer;

    .line 31
    invoke-static {}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createIdentityMtx()[F

    move-result-object v0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mPosMtx:[F

    .line 33
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTextureId:I

    .line 34
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    .line 35
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maPositionHandle:I

    .line 36
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maTexCoordHandle:I

    .line 37
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muPosMtxHandle:I

    .line 38
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muTexMtxHandle:I

    .line 40
    new-array v0, v3, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFboId:[I

    .line 41
    new-array v0, v3, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRboId:[I

    .line 42
    new-array v0, v3, [I

    aput v2, v0, v2

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTexId:[I

    .line 44
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    .line 45
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    .line 46
    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mAngle:F

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRunOnDraw:Ljava/util/LinkedList;

    .line 54
    return-void
.end method

.method private createEffectTexture()V
    .locals 10

    .prologue
    const v5, 0x8d41

    const/4 v4, 0x1

    const v9, 0x8d40

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 110
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getState()Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    move-result-object v2

    sget-object v3, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-eq v2, v3, :cond_0

    .line 148
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v2, "initFBO_S"

    invoke-static {v2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 114
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFboId:[I

    invoke-static {v4, v2, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 115
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRboId:[I

    invoke-static {v4, v2, v1}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 116
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTexId:[I

    invoke-static {v4, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 118
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRboId:[I

    aget v2, v2, v1

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 119
    const v2, 0x81a5

    iget v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    invoke-static {v5, v2, v3, v4}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    .line 122
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFboId:[I

    aget v2, v2, v1

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 123
    const v2, 0x8d00

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRboId:[I

    aget v3, v3, v1

    invoke-static {v9, v2, v5, v3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 126
    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 127
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTexId:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 128
    const/16 v2, 0x2801

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 130
    const/16 v2, 0x2800

    const/16 v3, 0x2601

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 132
    const/16 v2, 0x2802

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 134
    const/16 v2, 0x2803

    const v3, 0x812f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 137
    const/16 v2, 0x1908

    iget v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    iget v4, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v5, v1

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 140
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTexId:[I

    aget v3, v3, v1

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 143
    invoke-static {v9}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "glCheckFramebufferStatus()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    const-string v0, "initFBO_E"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initSize()V
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getState()Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    move-result-object v3

    sget-object v4, Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;->PREVIEW:Lcom/laifeng/sopcastsdk/camera/CameraHolder$State;

    if-eq v3, v4, :cond_0

    .line 107
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->getCameraData()Lcom/laifeng/sopcastsdk/camera/CameraData;

    move-result-object v0

    .line 97
    .local v0, "cameraData":Lcom/laifeng/sopcastsdk/camera/CameraData;
    iget v2, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraWidth:I

    .line 98
    .local v2, "width":I
    iget v1, v0, Lcom/laifeng/sopcastsdk/camera/CameraData;->cameraHeight:I

    .line 99
    .local v1, "height":I
    invoke-static {}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->instance()Lcom/laifeng/sopcastsdk/camera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/laifeng/sopcastsdk/camera/CameraHolder;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    .line 101
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    .line 104
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    goto :goto_0
.end method

.method private loadShaderAndParams(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    const-string p1, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexMtx;\nvarying   vec2 textureCoordinate;\nvoid main() {\n  gl_Position = uPosMtx * position;\n  textureCoordinate   = (uTexMtx * inputTextureCoordinate).xy;\n}"

    .line 74
    const-string p2, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    vec4 tc = texture2D(sTexture, textureCoordinate);\n    gl_FragColor = vec4(tc.r, tc.g, tc.b, 1.0);\n}"

    .line 75
    const-string v0, "SopCast"

    const-string v1, "Couldn\'t load the shader, so use the null shader!"

    invoke-static {v0, v1}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    const-string v0, "initSH_S"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 78
    invoke-static {p1, p2}, Lcom/laifeng/sopcastsdk/video/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    .line 79
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maPositionHandle:I

    .line 80
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maTexCoordHandle:I

    .line 82
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    const-string v1, "uPosMtx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muPosMtxHandle:I

    .line 83
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    const-string v1, "uTexMtx"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muTexMtxHandle:I

    .line 84
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->loadOtherParams()V

    .line 85
    const-string v0, "initSH_E"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 7
    .param p1, "tex_mtx"    # [F

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 167
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    if-eq v2, v0, :cond_0

    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTextureId:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    if-ne v0, v2, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    const-string v0, "draw_S"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 172
    const v0, 0x8d40

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFboId:[I

    aget v2, v2, v3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 174
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mWidth:I

    iget v2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mHeight:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 175
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 176
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 178
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 179
    invoke-virtual {p0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runPendingOnDrawTasks()V

    .line 181
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVtxBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 182
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVtxBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 184
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 186
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVtxBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 187
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maTexCoordHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVtxBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 189
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 191
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muPosMtxHandle:I

    if-ltz v0, :cond_2

    .line 192
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muPosMtxHandle:I

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mPosMtx:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 194
    :cond_2
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muTexMtxHandle:I

    if-ltz v0, :cond_3

    .line 195
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->muTexMtxHandle:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 197
    :cond_3
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 198
    const v0, 0x8d65

    iget v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTextureId:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 200
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 202
    const v0, 0x8d40

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 203
    const-string v0, "draw_E"

    invoke-static {v0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->checkGlError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getEffertedTextureId()I
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTexId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected loadOtherParams()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVertex:Ljava/lang/String;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFragment:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->loadShaderAndParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->initSize()V

    .line 64
    invoke-direct {p0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->createEffectTexture()V

    .line 65
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 294
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    if-eq v1, v0, :cond_0

    .line 295
    iget v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 296
    iput v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mProgram:I

    .line 298
    :cond_0
    return-void
.end method

.method protected runOnDraw(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRunOnDraw:Ljava/util/LinkedList;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .prologue
    .line 161
    :goto_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method protected setFloat(IF)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "floatValue"    # F

    .prologue
    .line 216
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$2;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;IF)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method protected setFloatArray(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 252
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$6;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method protected setFloatVec2(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 225
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$3;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 231
    return-void
.end method

.method protected setFloatVec3(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 234
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$4;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method

.method protected setFloatVec4(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "arrayValue"    # [F

    .prologue
    .line 243
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$5;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 249
    return-void
.end method

.method protected setInteger(II)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "intValue"    # I

    .prologue
    .line 207
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$1;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;II)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 213
    return-void
.end method

.method protected setPoint(ILandroid/graphics/PointF;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "point"    # Landroid/graphics/PointF;

    .prologue
    .line 261
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/laifeng/sopcastsdk/video/effect/Effect$7;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;Landroid/graphics/PointF;I)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public setShader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "vertex"    # Ljava/lang/String;
    .param p2, "fragment"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mVertex:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mFragment:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTextureId(I)V
    .locals 0
    .param p1, "textureId"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/laifeng/sopcastsdk/video/effect/Effect;->mTextureId:I

    .line 69
    return-void
.end method

.method protected setUniformMatrix3f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 274
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$8;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method protected setUniformMatrix4f(I[F)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "matrix"    # [F

    .prologue
    .line 284
    new-instance v0, Lcom/laifeng/sopcastsdk/video/effect/Effect$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/laifeng/sopcastsdk/video/effect/Effect$9;-><init>(Lcom/laifeng/sopcastsdk/video/effect/Effect;I[F)V

    invoke-virtual {p0, v0}, Lcom/laifeng/sopcastsdk/video/effect/Effect;->runOnDraw(Ljava/lang/Runnable;)V

    .line 291
    return-void
.end method
