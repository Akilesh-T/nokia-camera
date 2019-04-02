.class public Lcom/android/camera/pip/opengl/GLBottomRenderer;
.super Lcom/android/camera/pip/opengl/Renderer;
.source "GLBottomRenderer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static TEXTURE_FULL:[F

.field private static TEXTURE_FULL_18x9:[F

.field private static TEXTURE_HALF:[F

.field private static TEXTURE_HALF_18x9:[F

.field private static VERTEX_FULL:[F

.field private static VERTEX_FULL_HORIZONTAL:[F

.field private static VERTEX_FULL_VERTICAL:[F

.field private static VERTEX_HALF:[F

.field private static VERTEX_HALF_HORIZONTAL:[F

.field private static VERTEX_HALF_VERTICAL:[F


# instance fields
.field private mTextureFullBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHalfBuffer:Ljava/nio/FloatBuffer;

.field private mVertexFullBuffer:Ljava/nio/FloatBuffer;

.field private mVertexFullHorizontalBuffer:Ljava/nio/FloatBuffer;

.field private mVertexFullVerticalBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

.field private mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 17
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GLBottomRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 19
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL:[F

    .line 20
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_HORIZONTAL:[F

    .line 21
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_VERTICAL:[F

    .line 22
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF:[F

    .line 23
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_HORIZONTAL:[F

    .line 24
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_VERTICAL:[F

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_FULL:[F

    .line 26
    new-array v0, v2, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_HALF:[F

    .line 28
    new-array v0, v2, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_FULL_18x9:[F

    .line 29
    new-array v0, v2, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_HALF_18x9:[F

    return-void

    .line 19
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

    .line 20
    :array_1
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

    .line 21
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 22
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 23
    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 24
    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 25
    :array_6
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

    .line 26
    :array_7
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

    .line 28
    :array_8
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

    .line 29
    :array_9
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
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "use18x9Layout"    # Z

    .prologue
    const/4 v12, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/Renderer;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 44
    .local v4, "vertexFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    .line 46
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 47
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_HORIZONTAL:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 50
    .local v5, "vertexFullHBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullHorizontalBuffer:Ljava/nio/FloatBuffer;

    .line 52
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullHorizontalBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_HORIZONTAL:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 53
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_VERTICAL:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 56
    .local v6, "vertexFullVBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullVerticalBuffer:Ljava/nio/FloatBuffer;

    .line 58
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullVerticalBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_FULL_VERTICAL:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 59
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 62
    .local v7, "vertexHalfBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    .line 64
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 65
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_HORIZONTAL:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 68
    .local v8, "vertexHalfHBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    .line 70
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_HORIZONTAL:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    sget-object v10, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_VERTICAL:[F

    array-length v10, v10

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 74
    .local v9, "vertexHalfVBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    .line 76
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    sget-object v11, Lcom/android/camera/pip/opengl/GLBottomRenderer;->VERTEX_HALF_VERTICAL:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_FULL_18x9:[F

    .line 81
    .local v0, "textureFull":[F
    :goto_0
    array-length v10, v0

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 82
    .local v1, "textureFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    .line 84
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    if-eqz p2, :cond_1

    sget-object v2, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_HALF_18x9:[F

    .line 88
    .local v2, "textureHalf":[F
    :goto_1
    array-length v10, v2

    mul-int/lit8 v10, v10, 0x4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 89
    .local v3, "textureHalfBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 92
    iget-object v10, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v12}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    return-void

    .line 80
    .end local v0    # "textureFull":[F
    .end local v1    # "textureFullBB":Ljava/nio/ByteBuffer;
    .end local v2    # "textureHalf":[F
    .end local v3    # "textureHalfBB":Ljava/nio/ByteBuffer;
    :cond_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_FULL:[F

    goto :goto_0

    .line 87
    .restart local v0    # "textureFull":[F
    .restart local v1    # "textureFullBB":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v2, Lcom/android/camera/pip/opengl/GLBottomRenderer;->TEXTURE_HALF:[F

    goto :goto_1
.end method


# virtual methods
.method public draw(I[FLcom/android/camera/pip/opengl/GLRenderer$PIPMode;ZZ)V
    .locals 6
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F
    .param p3, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p4, "isMirror"    # Z
    .param p5, "isHorizontal"    # Z

    .prologue
    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 96
    const-string v0, "GLBottomRenderer draw start"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 98
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mProgram:I

    const-string v5, "camTextureTransform"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureTransHandler:I

    .line 99
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mProgram:I

    const-string v5, "camTexCoordinate"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureCoordinateHandle:I

    .line 100
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 101
    invoke-static {p3}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    if-nez p4, :cond_0

    .line 103
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 120
    :goto_0
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 121
    const v0, 0x8d65

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureParamHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 124
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 125
    invoke-static {p3}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 126
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureCoordinateHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 131
    :goto_1
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureTransHandler:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 132
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/pip/opengl/GLBottomRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 133
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 134
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 135
    const-string v0, "GLBottomRenderer draw end"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 136
    return-void

    .line 104
    :cond_0
    if-eqz p5, :cond_1

    .line 105
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 107
    :cond_1
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexFullVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 110
    :cond_2
    if-nez p4, :cond_3

    .line 111
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 112
    :cond_3
    if-eqz p5, :cond_4

    .line 113
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfHorizontalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 115
    :cond_4
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mPositionHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mVertexHalfVerticalBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 128
    :cond_5
    iget v0, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureCoordinateHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/GLBottomRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_1
.end method
