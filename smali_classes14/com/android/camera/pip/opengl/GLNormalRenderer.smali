.class public Lcom/android/camera/pip/opengl/GLNormalRenderer;
.super Lcom/android/camera/pip/opengl/Renderer;
.source "GLNormalRenderer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static TEXTURE_FULL:[F

.field private static VERTEX_FULL:[F


# instance fields
.field private mTextureFullBuffer:Ljava/nio/FloatBuffer;

.field private mVertexFullBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GLNormalRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 17
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->VERTEX_FULL:[F

    .line 18
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->TEXTURE_FULL:[F

    return-void

    .line 17
    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 18
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/Renderer;-><init>(Landroid/content/Context;)V

    .line 26
    sget-object v2, Lcom/android/camera/pip/opengl/GLNormalRenderer;->VERTEX_FULL:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 27
    .local v1, "vertexFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    .line 29
    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/android/camera/pip/opengl/GLNormalRenderer;->VERTEX_FULL:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 30
    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 32
    sget-object v2, Lcom/android/camera/pip/opengl/GLNormalRenderer;->TEXTURE_FULL:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 33
    .local v0, "textureFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    .line 35
    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/android/camera/pip/opengl/GLNormalRenderer;->TEXTURE_FULL:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 36
    iget-object v2, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 37
    return-void
.end method


# virtual methods
.method public draw(I[F)V
    .locals 6
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 40
    const-string v0, "GLNormalRenderer draw start"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 41
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 42
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mProgram:I

    const-string v5, "camTextureTransform"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureTransHandler:I

    .line 43
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mProgram:I

    const-string v5, "camTexCoordinate"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureCoordinateHandle:I

    .line 44
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 45
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 48
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 49
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 50
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureParamHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 52
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 53
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureCoordinateHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 55
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureTransHandler:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 56
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/pip/opengl/GLNormalRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 57
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 58
    iget v0, p0, Lcom/android/camera/pip/opengl/GLNormalRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 59
    const-string v0, "GLNormalRenderer draw end"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 60
    return-void
.end method
