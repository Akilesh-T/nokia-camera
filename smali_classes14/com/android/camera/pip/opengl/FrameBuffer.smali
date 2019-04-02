.class public Lcom/android/camera/pip/opengl/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrameBuffer"


# instance fields
.field private final mFboId:[I

.field private final mFboTexId:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboId:[I

    .line 46
    new-array v0, v2, [I

    aput v1, v0, v1

    iput-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    .line 49
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/FrameBuffer;->generateFBO()V

    .line 50
    return-void
.end method

.method private deleteFBO()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 124
    const-string v0, "FrameBuffer"

    const-string v1, "FrameBuffer glDeleteTextures texture num = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private generateFBO()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 117
    iget-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 118
    const-string v0, "FrameBuffer"

    const-string v1, "FrameBuffer glGenTextures texture num = 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method


# virtual methods
.method public getFboTexId()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "FrameBuffer"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/camera/pip/opengl/FrameBuffer;->deleteFBO()V

    .line 112
    return-void
.end method

.method public setRendererSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v6, 0x2601

    const/16 v2, 0x1908

    const v9, 0x8d40

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 53
    const-string v3, "FrameBuffer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initFBO width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v3, "initFBO start"

    invoke-static {v3}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboId:[I

    aget v3, v3, v1

    invoke-static {v9, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 61
    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 62
    iget-object v3, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    aget v3, v3, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    const/16 v3, 0x2801

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 66
    const/16 v3, 0x2800

    invoke-static {v0, v3, v6}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 70
    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 72
    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 75
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v2

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 78
    const v2, 0x8ce0

    iget-object v3, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboTexId:[I

    aget v3, v3, v1

    invoke-static {v9, v2, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 81
    invoke-static {v9}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v1, 0x8cd5

    if-eq v0, v1, :cond_2

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCheckFramebufferStatus() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-static {v9}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_2
    const-string v0, "initFBO end"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setScreenBufferGraphics()V
    .locals 2

    .prologue
    .line 106
    const v0, 0x8d40

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 107
    return-void
.end method

.method public setupFrameBufferGraphics(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 95
    const v0, 0x8d40

    iget-object v1, p0, Lcom/android/camera/pip/opengl/FrameBuffer;->mFboId:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 96
    invoke-static {v3, v3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v2, v2, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 98
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 100
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 101
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 102
    const-string v0, "setupFrameBufferGraphics"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkEglError(Ljava/lang/String;)V

    .line 103
    return-void
.end method
