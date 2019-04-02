.class public Lcom/android/camera/opengl/render/TextureImageRender;
.super Lcom/android/camera/opengl/render/BasicRender;
.source "TextureImageRender.java"


# static fields
.field private static final DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

.field private static final DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

.field private static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTexCoord   = (uSTMatrix * aTexCoord).xy;\n}\n"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final aPositionHandle:I

.field private final aTexCoordHandle:I

.field private final mHeight:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWidth:I

.field private final sTextureHandle:I

.field private final uMVPMatrixHandle:I

.field private final uSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TextureImageRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/render/TextureImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aPosition"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aTexCoord"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/render/TextureImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 59
    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTexCoord   = (uSTMatrix * aTexCoord).xy;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES sTexture;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTexCoord);\n}\n"

    sget-object v2, Lcom/android/camera/opengl/render/TextureImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/opengl/render/BasicRender;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->FLOAT_SIZE_BYTES:I

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    iput p1, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mWidth:I

    .line 63
    iput p2, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mHeight:I

    .line 65
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aPositionHandle:I

    .line 66
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 67
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aPositionHandle:I

    if-ne v0, v3, :cond_0

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aTexCoordHandle:I

    .line 72
    const-string v0, "glGetAttribLocation aTexCoord"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aTexCoordHandle:I

    if-ne v0, v3, :cond_1

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTexCoordHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uMVPMatrixHandle:I

    .line 78
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uMVPMatrixHandle:I

    if-ne v0, v3, :cond_2

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_2
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uSTMatrixHandle:I

    .line 84
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uSTMatrixHandle:I

    if-ne v0, v3, :cond_3

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_3
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->sTextureHandle:I

    .line 90
    const-string v0, "glGetUniformLocation sTexture"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->sTextureHandle:I

    if-ne v0, v3, :cond_4

    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uTexture"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_4
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mWidth:I

    iget v1, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mHeight:I

    invoke-static {v5, v5, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 96
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 97
    return-void
.end method


# virtual methods
.method public draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9
    .param p1, "textureId"    # I
    .param p2, "uMVPMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "uSTMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "vertexBuffer"    # Ljava/nio/FloatBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "texCoordBuffer"    # Ljava/nio/FloatBuffer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    const-string v0, "TextureImageRender draw start"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 107
    const-string v0, "glUseProgram mProgramHandler"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    .line 110
    .local v1, "vertexStride":I
    invoke-virtual {p5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v8, v0, 0x4

    .line 111
    .local v8, "texCoordStride":I
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aPositionHandle:I

    const/16 v2, 0x1406

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x4

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 116
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 117
    const-string v0, "glEnableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 119
    iget v2, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aTexCoordHandle:I

    const/16 v4, 0x1406

    const/4 v5, 0x0

    mul-int/lit8 v6, v8, 0x4

    move v3, v8

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 121
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 122
    const-string v0, "glEnableVertexAttribArray aTexCoordHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 124
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 125
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 126
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->sTextureHandle:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 127
    const-string v0, "glBindTexture sTextureHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 130
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->uSTMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 132
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 133
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 136
    const-string v0, "glDisableVertexAttribArray aTexCoordHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 138
    const-string v0, "glDisableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/android/camera/opengl/render/TextureImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/render/TextureImageRender;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 141
    const-string v0, "TextureImageRender draw end"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/render/TextureImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-super {p0}, Lcom/android/camera/opengl/render/BasicRender;->release()V

    .line 151
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
