.class public Lcom/android/camera/opengl/render/EffectImageRender;
.super Lcom/android/camera/opengl/render/BasicRender;
.source "EffectImageRender.java"


# static fields
.field private static final DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

.field private static final DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

.field private static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform  mat4 uMVPMatrix;\nuniform  mat4 uSTMatrix;\nvarying  vec2 vTexCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTexCoord   = (uSTMatrix * aTexCoord).xy;\n}\n"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final aPositionHandle:I

.field private final aTexCoordHandle:I

.field private final mHeight:I

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWidth:I

.field private final uMVPMatrixHandle:I

.field private final uSTMatrixHandle:I

.field private final uSamplerHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "EffectImageRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/render/EffectImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "aPosition"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "aTexCoord"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/render/EffectImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

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

    .line 58
    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform  mat4 uMVPMatrix;\nuniform  mat4 uSTMatrix;\nvarying  vec2 vTexCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTexCoord   = (uSTMatrix * aTexCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2 vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

    sget-object v2, Lcom/android/camera/opengl/render/EffectImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/opengl/render/BasicRender;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->FLOAT_SIZE_BYTES:I

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput p1, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mWidth:I

    .line 61
    iput p2, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mHeight:I

    .line 63
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aPositionHandle:I

    .line 64
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aPositionHandle:I

    if-ne v0, v3, :cond_0

    .line 66
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aTexCoordHandle:I

    .line 70
    const-string v0, "glGetAttribLocation aTexCoord"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aTexCoordHandle:I

    if-ne v0, v3, :cond_1

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTexCoordHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uMVPMatrixHandle:I

    .line 76
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uMVPMatrixHandle:I

    if-ne v0, v3, :cond_2

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSTMatrixHandle:I

    .line 82
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSTMatrixHandle:I

    if-ne v0, v3, :cond_3

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    const-string v1, "uSampler"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSamplerHandle:I

    .line 88
    const-string v0, "glGetUniformLocation uSamplerHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSamplerHandle:I

    if-ne v0, v3, :cond_4

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get uniform location for uSamplerHandle"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_4
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mWidth:I

    iget v1, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mHeight:I

    invoke-static {v5, v5, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 94
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v4, v4, v4, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 95
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
    .line 102
    const-string v0, "EffectImageRender draw start"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 105
    const-string v0, "glUseProgram mProgramHandler"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    .line 108
    .local v1, "vertexStride":I
    invoke-virtual {p5}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v8, v0, 0x4

    .line 109
    .local v8, "texCoordStride":I
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aPositionHandle:I

    const/16 v2, 0x1406

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x4

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 114
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    const-string v0, "glEnableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 117
    iget v2, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aTexCoordHandle:I

    const/16 v4, 0x1406

    const/4 v5, 0x0

    mul-int/lit8 v6, v8, 0x4

    move v3, v8

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 119
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 120
    const-string v0, "glEnableVertexAttribArray aTexCoordHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 122
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 123
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 124
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSamplerHandle:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 125
    const-string v0, "glBindTexture uSamplerHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 128
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->uSTMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 130
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 131
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 134
    const-string v0, "glDisableVertexAttribArray aTexCoordHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 135
    iget v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 136
    const-string v0, "glDisableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/android/camera/opengl/render/EffectImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/render/EffectImageRender;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 139
    const-string v0, "EffectImageRender draw end"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/render/EffectImageRender;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-super {p0}, Lcom/android/camera/opengl/render/BasicRender;->release()V

    .line 173
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

.method public updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "textureId"    # I
    .param p2, "engineToUpdateBuffer"    # Lcom/android/camera/opengl/effect/EffectEngine;
    .param p3, "uMVPMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "uSTMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "vertexBuffer"    # Ljava/nio/FloatBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "texCoordBuffer"    # Ljava/nio/FloatBuffer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 152
    if-eqz p2, :cond_0

    invoke-virtual {p2, p5}, Lcom/android/camera/opengl/effect/EffectEngine;->updateBuffer(Ljava/nio/FloatBuffer;)V

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 153
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/opengl/render/EffectImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 154
    return-void
.end method
