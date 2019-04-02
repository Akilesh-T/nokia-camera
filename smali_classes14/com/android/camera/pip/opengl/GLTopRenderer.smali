.class public Lcom/android/camera/pip/opengl/GLTopRenderer;
.super Lcom/android/camera/pip/opengl/Renderer;
.source "GLTopRenderer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static TEXTURE_FULL:[F

.field private static TEXTURE_FULL_18x9:[F

.field private static TEXTURE_HALF:[F

.field private static TEXTURE_HALF_18x9:[F

.field private static VERTEX_HALF:[F

.field private static VERTEX_HALF_HORIZONTAL:[F

.field private static VERTEX_HALF_VERTICAL:[F


# instance fields
.field private mTextureFullBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHalfBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

.field private mVertexUpdateBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GLTopRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 18
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF:[F

    .line 19
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_HORIZONTAL:[F

    .line 20
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_VERTICAL:[F

    .line 21
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_FULL:[F

    .line 22
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_HALF:[F

    .line 24
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_FULL_18x9:[F

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_HALF_18x9:[F

    return-void

    .line 18
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 19
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 20
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 21
    :array_3
    .array-data 4
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
        0x0
        0x3f600000    # 0.875f
        0x0
    .end array-data

    .line 22
    :array_4
    .array-data 4
        0x0
        0x3f555555
        0x3f800000    # 1.0f
        0x3f555555
        0x0
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3e2aaaab
    .end array-data

    .line 24
    :array_5
    .array-data 4
        0x3e2aaaab
        0x3f800000    # 1.0f
        0x3f555555
        0x3f800000    # 1.0f
        0x3e2aaaab
        0x0
        0x3f555555
        0x0
    .end array-data

    .line 25
    :array_6
    .array-data 4
        0x0
        0x3f600000    # 0.875f
        0x3f800000    # 1.0f
        0x3f600000    # 0.875f
        0x0
        0x3e000000    # 0.125f
        0x3f800000    # 1.0f
        0x3e000000    # 0.125f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "use18x9Layout"    # Z

    .prologue
    const/4 v9, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/Renderer;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object v7, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 38
    .local v4, "vertexHalfBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    .line 40
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    sget-object v8, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF:[F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 41
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 43
    sget-object v7, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_HORIZONTAL:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 44
    .local v5, "vertexHalfHBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    .line 46
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    sget-object v8, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_HORIZONTAL:[F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 47
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    sget-object v7, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_VERTICAL:[F

    array-length v7, v7

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 50
    .local v6, "vertexHalfVBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    .line 52
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    sget-object v8, Lcom/android/camera/pip/opengl/GLTopRenderer;->VERTEX_HALF_VERTICAL:[F

    invoke-virtual {v7, v8}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 53
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_FULL_18x9:[F

    .line 56
    .local v0, "textureFull":[F
    :goto_0
    array-length v7, v0

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    .local v1, "textureFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    .line 59
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 60
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    if-eqz p2, :cond_1

    sget-object v2, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_HALF_18x9:[F

    .line 63
    .local v2, "textureHalf":[F
    :goto_1
    array-length v7, v2

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 64
    .local v3, "textureHalfBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    .line 66
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 67
    iget-object v7, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    return-void

    .line 55
    .end local v0    # "textureFull":[F
    .end local v1    # "textureFullBB":Ljava/nio/ByteBuffer;
    .end local v2    # "textureHalf":[F
    .end local v3    # "textureHalfBB":Ljava/nio/ByteBuffer;
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_FULL:[F

    goto :goto_0

    .line 62
    .restart local v0    # "textureFull":[F
    .restart local v1    # "textureFullBB":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v2, Lcom/android/camera/pip/opengl/GLTopRenderer;->TEXTURE_HALF:[F

    goto :goto_1
.end method

.method private updateVertex([FZZ)[F
    .locals 8
    .param p1, "vertexBuffer"    # [F
    .param p2, "isMirror"    # Z
    .param p3, "isHorizontal"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    if-nez p1, :cond_1

    .line 109
    sget-object v1, Lcom/android/camera/pip/opengl/GLTopRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "updateVertex() vertexBuffer should not be null, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    .end local p1    # "vertexBuffer":[F
    :cond_0
    :goto_0
    return-object p1

    .line 111
    .restart local p1    # "vertexBuffer":[F
    :cond_1
    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 112
    sget-object v1, Lcom/android/camera/pip/opengl/GLTopRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVertex() vertexBuffer length should 8, but current size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Skip it!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    if-eqz p2, :cond_0

    .line 118
    if-eqz p3, :cond_3

    .line 119
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 120
    .local v0, "returnBuffer":[F
    aget v1, p1, v7

    aput v1, v0, v3

    .line 121
    const/4 v1, 0x5

    aget v1, p1, v1

    aput v1, v0, v4

    .line 122
    const/4 v1, 0x6

    aget v1, p1, v1

    aput v1, v0, v5

    .line 123
    const/4 v1, 0x7

    aget v1, p1, v1

    aput v1, v0, v6

    .line 124
    aget v1, p1, v3

    aput v1, v0, v7

    .line 125
    const/4 v1, 0x5

    aget v2, p1, v4

    aput v2, v0, v1

    .line 126
    const/4 v1, 0x6

    aget v2, p1, v5

    aput v2, v0, v1

    .line 127
    const/4 v1, 0x7

    aget v2, p1, v6

    aput v2, v0, v1

    move-object p1, v0

    .line 128
    goto :goto_0

    .line 130
    .end local v0    # "returnBuffer":[F
    :cond_3
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 131
    .restart local v0    # "returnBuffer":[F
    aget v1, p1, v5

    aput v1, v0, v3

    .line 132
    aget v1, p1, v6

    aput v1, v0, v4

    .line 133
    aget v1, p1, v3

    aput v1, v0, v5

    .line 134
    aget v1, p1, v4

    aput v1, v0, v6

    .line 135
    const/4 v1, 0x6

    aget v1, p1, v1

    aput v1, v0, v7

    .line 136
    const/4 v1, 0x5

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    .line 137
    const/4 v1, 0x6

    aget v2, p1, v7

    aput v2, v0, v1

    .line 138
    const/4 v1, 0x7

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    move-object p1, v0

    .line 139
    goto/16 :goto_0
.end method


# virtual methods
.method public draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ[F)V
    .locals 6
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F
    .param p3, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "isMirror"    # Z
    .param p5, "isHorizontal"    # Z
    .param p6, "vertexBuffer"    # [F

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 71
    const-string v0, "GLTopRenderer draw start"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 73
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mProgram:I

    const-string v5, "camTextureTransform"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureTransHandler:I

    .line 74
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mProgram:I

    const-string v5, "camTexCoordinate"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureCoordinateHandle:I

    .line 75
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 76
    invoke-static {p3}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p6, p4, p5}, Lcom/android/camera/pip/opengl/GLTopRenderer;->updateVertex([FZZ)[F

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/pip/opengl/GLTopRenderer;->createFloatBuffer(Ljava/nio/FloatBuffer;[F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    .line 78
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 90
    :goto_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 91
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 92
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureParamHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 94
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 95
    invoke-static {p3}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureCoordinateHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 100
    :goto_1
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureTransHandler:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 101
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/pip/opengl/GLTopRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 102
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 103
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 104
    const-string v0, "GLTopRenderer draw end"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 105
    return-void

    .line 80
    :cond_0
    if-nez p4, :cond_1

    .line 81
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 82
    :cond_1
    if-eqz p5, :cond_2

    .line 83
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 85
    :cond_2
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 98
    :cond_3
    iget v0, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureCoordinateHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLTopRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1
.end method
