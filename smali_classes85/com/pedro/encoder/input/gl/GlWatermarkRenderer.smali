.class public Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;
.super Ljava/lang/Object;
.source "GlWatermarkRenderer.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final SQUARE_VERTEX_DATA_POS_OFFSET:I = 0x0

.field private static final SQUARE_VERTEX_DATA_STRIDE_BYTES:I = 0x14

.field private static final SQUARE_VERTEX_DATA_UV_OFFSET:I = 0x3

.field public static final TAG:Ljava/lang/String; = "TextureManager"


# instance fields
.field private MVPMatrix:[F

.field private STMatrix:[F

.field private aPositionHandle:I

.field private aTextureCameraHandle:I

.field private aTextureWatermarkHandle:I

.field private alpha:F

.field private context:Landroid/content/Context;

.field private encoderHeight:I

.field private encoderWidth:I

.field private program:I

.field private sWaterMarkHandle:I

.field private sprite:Lcom/pedro/encoder/input/gl/Sprite;

.field private squareVertex:Ljava/nio/FloatBuffer;

.field private final squareVertexData:[F

.field private squareVertexWatermark:Ljava/nio/FloatBuffer;

.field private streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

.field private streamObjectTextureId:[I

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureID:I

.field private textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

.field private texturesID:[I

.field private uAlphaHandle:I

.field private uMVPMatrixHandle:I

.field private uSTMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexData:[F

    .line 50
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->MVPMatrix:[F

    .line 51
    new-array v1, v4, [F

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->STMatrix:[F

    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->texturesID:[I

    .line 55
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    .line 56
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureID:I

    .line 57
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uMVPMatrixHandle:I

    .line 58
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uSTMatrixHandle:I

    .line 59
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aPositionHandle:I

    .line 60
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureCameraHandle:I

    .line 61
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureWatermarkHandle:I

    .line 62
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sWaterMarkHandle:I

    .line 63
    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uAlphaHandle:I

    .line 68
    iput-object v5, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 69
    iput-object v5, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 70
    new-instance v1, Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-direct {v1}, Lcom/pedro/encoder/input/gl/TextureLoader;-><init>()V

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    .line 72
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->alpha:F

    .line 77
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->context:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexData:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    .line 81
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexData:[F

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 83
    new-instance v1, Lcom/pedro/encoder/input/gl/Sprite;

    invoke-direct {v1}, Lcom/pedro/encoder/input/gl/Sprite;-><init>()V

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    .line 84
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v1}, Lcom/pedro/encoder/input/gl/Sprite;->getTransformedVertices()[F

    move-result-object v0

    .line 85
    .local v0, "vertices":[F
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    .line 88
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->MVPMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 91
    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->STMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 92
    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private prepareDefaultSpriteValues()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    invoke-virtual {v1}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->encoderWidth:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 257
    invoke-virtual {v2}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iget v3, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->encoderHeight:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    .line 256
    invoke-virtual {v0, v1, v2}, Lcom/pedro/encoder/input/gl/Sprite;->scale(FF)V

    .line 258
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v1}, Lcom/pedro/encoder/input/gl/Sprite;->getTransformedVertices()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 259
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 223
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 224
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/Sprite;->reset()V

    .line 225
    return-void
.end method

.method public drawFrame(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v8, 0x2

    const/16 v2, 0x1406

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 111
    const-string v0, "drawFrame start"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->STMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 114
    invoke-static {v3, v3, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 115
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 116
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 118
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 120
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 121
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aPositionHandle:I

    const/4 v1, 0x3

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 123
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 126
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureCameraHandle:I

    const/16 v4, 0x14

    iget-object v5, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertex:Ljava/nio/FloatBuffer;

    move v1, v8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 128
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureCameraHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 130
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 131
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureWatermarkHandle:I

    const/16 v4, 0x8

    iget-object v5, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    move v1, v8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 133
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureWatermarkHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 135
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uMVPMatrixHandle:I

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->MVPMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 136
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uSTMatrixHandle:I

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->STMatrix:[F

    invoke-static {v0, v7, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 138
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 139
    const v0, 0x8d65

    iget v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 141
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sWaterMarkHandle:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 142
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 144
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    aget v0, v0, v3

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 146
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 154
    :goto_0
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uAlphaHandle:I

    iget v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->alpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 160
    :goto_1
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 161
    const-string v0, "drawFrame end"

    invoke-static {v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 162
    return-void

    .line 150
    :cond_0
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 151
    invoke-virtual {v2}, Lcom/pedro/encoder/utils/gl/StreamObjectBase;->updateFrame()I

    move-result v2

    aget v1, v1, v2

    .line 150
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uAlphaHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_1
.end method

.method public getPosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/Sprite;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getScale()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/Sprite;->getScale()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureID:I

    return v0
.end method

.method public initGl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 168
    const-string v2, "initGl start"

    invoke-static {v2}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->context:Landroid/content/Context;

    sget v3, Lcom/pedro/encoder/R$raw;->watermark_vertex:I

    invoke-static {v2, v3}, Lcom/pedro/encoder/utils/gl/GlUtil;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "vertexShader":Ljava/lang/String;
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->context:Landroid/content/Context;

    sget v3, Lcom/pedro/encoder/R$raw;->watermark_fragment:I

    invoke-static {v2, v3}, Lcom/pedro/encoder/utils/gl/GlUtil;->getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "fragmentShader":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/pedro/encoder/utils/gl/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    .line 173
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aPositionHandle:I

    .line 174
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "aTextureCameraCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureCameraHandle:I

    .line 175
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "aTextureWatermarkCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->aTextureWatermarkHandle:I

    .line 176
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uMVPMatrixHandle:I

    .line 177
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uSTMatrixHandle:I

    .line 178
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "uAlpha"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->uAlphaHandle:I

    .line 179
    iget v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->program:I

    const-string v3, "sWatermark"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sWaterMarkHandle:I

    .line 182
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->texturesID:[I

    invoke-static {v2, v3, v4}, Lcom/pedro/encoder/utils/gl/GlUtil;->createExternalTextures(I[II)V

    .line 183
    iget-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->texturesID:[I

    aget v2, v2, v4

    iput v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureID:I

    .line 185
    new-instance v2, Landroid/graphics/SurfaceTexture;

    iget v3, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureID:I

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 186
    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surface:Landroid/view/Surface;

    .line 187
    const-string v2, "initGl end"

    invoke-static {v2}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 192
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surface:Landroid/view/Surface;

    .line 193
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 194
    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 195
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/Sprite;->reset()V

    .line 196
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 228
    iput p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->alpha:F

    .line 229
    return-void
.end method

.method public setGif(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V
    .locals 1
    .param p1, "gifStreamObject"    # Lcom/pedro/encoder/utils/gl/GifStreamObject;

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 216
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 217
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/gl/TextureLoader;->setGifStreamObject(Lcom/pedro/encoder/utils/gl/GifStreamObject;)V

    .line 218
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/TextureLoader;->load()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 219
    invoke-direct {p0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->prepareDefaultSpriteValues()V

    .line 220
    return-void
.end method

.method public setImage(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V
    .locals 1
    .param p1, "imageStreamObject"    # Lcom/pedro/encoder/utils/gl/ImageStreamObject;

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 200
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 201
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/gl/TextureLoader;->setImageStreamObject(Lcom/pedro/encoder/utils/gl/ImageStreamObject;)V

    .line 202
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/TextureLoader;->load()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 203
    invoke-direct {p0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->prepareDefaultSpriteValues()V

    .line 204
    return-void
.end method

.method public setPosition(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/encoder/input/gl/Sprite;->translate(FF)V

    .line 238
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v1}, Lcom/pedro/encoder/input/gl/Sprite;->getTransformedVertices()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    return-void
.end method

.method public setPosition(Lcom/pedro/encoder/utils/gl/TranslateTo;)V
    .locals 2
    .param p1, "positionTo"    # Lcom/pedro/encoder/utils/gl/TranslateTo;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/gl/Sprite;->translate(Lcom/pedro/encoder/utils/gl/TranslateTo;)V

    .line 243
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v1}, Lcom/pedro/encoder/input/gl/Sprite;->getTransformedVertices()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 244
    return-void
.end method

.method public setScale(FF)V
    .locals 2
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 232
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v0, p1, p2}, Lcom/pedro/encoder/input/gl/Sprite;->scale(FF)V

    .line 233
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->squareVertexWatermark:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->sprite:Lcom/pedro/encoder/input/gl/Sprite;

    invoke-virtual {v1}, Lcom/pedro/encoder/input/gl/Sprite;->getTransformedVertices()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    return-void
.end method

.method public setStreamSize(II)V
    .locals 0
    .param p1, "encoderWidth"    # I
    .param p2, "encoderHeight"    # I

    .prologue
    .line 262
    iput p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->encoderWidth:I

    .line 263
    iput p2, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->encoderHeight:I

    .line 264
    return-void
.end method

.method public setText(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V
    .locals 1
    .param p1, "textStreamObject"    # Lcom/pedro/encoder/utils/gl/TextStreamObject;

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 208
    iput-object p1, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectBase:Lcom/pedro/encoder/utils/gl/StreamObjectBase;

    .line 209
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0, p1}, Lcom/pedro/encoder/input/gl/TextureLoader;->setTextStreamObject(Lcom/pedro/encoder/utils/gl/TextStreamObject;)V

    .line 210
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->textureLoader:Lcom/pedro/encoder/input/gl/TextureLoader;

    invoke-virtual {v0}, Lcom/pedro/encoder/input/gl/TextureLoader;->load()[I

    move-result-object v0

    iput-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->streamObjectTextureId:[I

    .line 211
    invoke-direct {p0}, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->prepareDefaultSpriteValues()V

    .line 212
    return-void
.end method

.method public updateFrame()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pedro/encoder/input/gl/GlWatermarkRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 108
    return-void
.end method
