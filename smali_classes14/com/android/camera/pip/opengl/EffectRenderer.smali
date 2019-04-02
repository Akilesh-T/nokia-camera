.class public Lcom/android/camera/pip/opengl/EffectRenderer;
.super Lcom/android/camera/pip/opengl/Renderer;
.source "EffectRenderer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static TEXTURE:[F

.field private static TEXTURE_FULL:[F

.field private static TEXTURE_FULL_18x9:[F

.field private static TEXTURE_HALF:[F

.field private static TEXTURE_HALF_18x9:[F

.field private static VERTEX:[F


# instance fields
.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mTextureFullBuffer:Ljava/nio/FloatBuffer;

.field private mTextureHalfBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

.field private maPositionHandle:I

.field private maTexCoordHandle:I

.field private muPosMtxHandle:I

.field private muSamplerHandle:I

.field private muTexRotateMtxHandle:I

.field private final sFragmentShaderCode:Ljava/lang/String;

.field private final sVertexShaderCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 17
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ScreenRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 50
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->VERTEX:[F

    .line 51
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE:[F

    .line 52
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_FULL:[F

    .line 53
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_HALF:[F

    .line 55
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_FULL_18x9:[F

    .line 56
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_HALF_18x9:[F

    return-void

    .line 50
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

    .line 51
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

    .line 52
    :array_2
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

    .line 53
    :array_3
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

    .line 55
    :array_4
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

    .line 56
    :array_5
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
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "use18x9Layout"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v6, -0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/Renderer;-><init>(Landroid/content/Context;)V

    .line 19
    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maPositionHandle:I

    .line 20
    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muTexRotateMtxHandle:I

    .line 21
    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    .line 22
    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muPosMtxHandle:I

    .line 23
    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muSamplerHandle:I

    .line 31
    const-string v6, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexRotateMtx;\nvarying   vec2 vTexCoord;\nvoid main() {\n  gl_Position = uPosMtx * aPosition;\n  vTexCoord   = (uTexRotateMtx * aTexCoord).xy;\n}\n"

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->sVertexShaderCode:Ljava/lang/String;

    .line 42
    const-string v6, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2      vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->sFragmentShaderCode:Ljava/lang/String;

    .line 61
    iget v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    const-string v7, "aPosition"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maPositionHandle:I

    .line 62
    iget v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    const-string v7, "aTexCoord"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    .line 64
    iget v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    const-string v7, "uPosMtx"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muPosMtxHandle:I

    .line 65
    iget v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    const-string v7, "uTexRotateMtx"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muTexRotateMtxHandle:I

    .line 67
    iget v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    const-string v7, "uSampler"

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muSamplerHandle:I

    .line 68
    sget-object v6, Lcom/android/camera/pip/opengl/EffectRenderer;->VERTEX:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 69
    .local v5, "vertexBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 70
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 71
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v7, Lcom/android/camera/pip/opengl/EffectRenderer;->VERTEX:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 72
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    sget-object v6, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE:[F

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    .local v0, "textureBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 77
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v7, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE:[F

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_FULL_18x9:[F

    .line 81
    .local v1, "textureFull":[F
    :goto_0
    array-length v6, v1

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 82
    .local v2, "textureFullBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    .line 84
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    if-eqz p2, :cond_1

    sget-object v3, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_HALF_18x9:[F

    .line 88
    .local v3, "textureHalf":[F
    :goto_1
    array-length v6, v3

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 89
    .local v4, "textureHalfBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    .line 91
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 92
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    return-void

    .line 80
    .end local v1    # "textureFull":[F
    .end local v2    # "textureFullBB":Ljava/nio/ByteBuffer;
    .end local v3    # "textureHalf":[F
    .end local v4    # "textureHalfBB":Ljava/nio/ByteBuffer;
    :cond_0
    sget-object v1, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_FULL:[F

    goto :goto_0

    .line 87
    .restart local v1    # "textureFull":[F
    .restart local v2    # "textureFullBB":Ljava/nio/ByteBuffer;
    :cond_1
    sget-object v3, Lcom/android/camera/pip/opengl/EffectRenderer;->TEXTURE_HALF:[F

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

    .line 175
    if-nez p1, :cond_1

    .line 176
    sget-object v1, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "updateVertex() vertexBuffer should not be null, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    .end local p1    # "vertexBuffer":[F
    :cond_0
    :goto_0
    return-object p1

    .line 178
    .restart local p1    # "vertexBuffer":[F
    :cond_1
    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 179
    sget-object v1, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 183
    :cond_2
    if-eqz p2, :cond_0

    .line 185
    if-eqz p3, :cond_3

    .line 186
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 187
    .local v0, "returnBuffer":[F
    aget v1, p1, v7

    aput v1, v0, v3

    .line 188
    const/4 v1, 0x5

    aget v1, p1, v1

    aput v1, v0, v4

    .line 189
    const/4 v1, 0x6

    aget v1, p1, v1

    aput v1, v0, v5

    .line 190
    const/4 v1, 0x7

    aget v1, p1, v1

    aput v1, v0, v6

    .line 191
    aget v1, p1, v3

    aput v1, v0, v7

    .line 192
    const/4 v1, 0x5

    aget v2, p1, v4

    aput v2, v0, v1

    .line 193
    const/4 v1, 0x6

    aget v2, p1, v5

    aput v2, v0, v1

    .line 194
    const/4 v1, 0x7

    aget v2, p1, v6

    aput v2, v0, v1

    move-object p1, v0

    .line 195
    goto :goto_0

    .line 197
    .end local v0    # "returnBuffer":[F
    :cond_3
    const/16 v1, 0x8

    new-array v0, v1, [F

    .line 198
    .restart local v0    # "returnBuffer":[F
    aget v1, p1, v5

    aput v1, v0, v3

    .line 199
    aget v1, p1, v6

    aput v1, v0, v4

    .line 200
    aget v1, p1, v3

    aput v1, v0, v5

    .line 201
    aget v1, p1, v4

    aput v1, v0, v6

    .line 202
    const/4 v1, 0x6

    aget v1, p1, v1

    aput v1, v0, v7

    .line 203
    const/4 v1, 0x5

    const/4 v2, 0x7

    aget v2, p1, v2

    aput v2, v0, v1

    .line 204
    const/4 v1, 0x6

    aget v2, p1, v7

    aput v2, v0, v1

    .line 205
    const/4 v1, 0x7

    const/4 v2, 0x5

    aget v2, p1, v2

    aput v2, v0, v1

    move-object p1, v0

    .line 206
    goto/16 :goto_0
.end method


# virtual methods
.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 96
    const/4 v1, 0x0

    .local v1, "fragmentShaderCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 98
    .local v5, "vertexShaderCode":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.frag.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v6, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.vert.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 101
    :goto_0
    const v6, 0x8b31

    const-string v7, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexRotateMtx;\nvarying   vec2 vTexCoord;\nvoid main() {\n  gl_Position = uPosMtx * aPosition;\n  vTexCoord   = (uTexRotateMtx * aTexCoord).xy;\n}\n"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/pip/opengl/EffectRenderer;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "vertexShader":I
    const v6, 0x8b30

    const-string v7, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2      vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/pip/opengl/EffectRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 104
    .local v3, "program":I
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 105
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 106
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 108
    new-array v2, v9, [I

    .line 109
    .local v2, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 110
    aget v6, v2, v8

    if-eq v6, v9, :cond_0

    .line 111
    sget-object v6, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Could not link program:"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    sget-object v6, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 114
    const/4 v3, 0x0

    .line 116
    :cond_0
    return v3

    .line 100
    .end local v0    # "fragmentShader":I
    .end local v2    # "linkStatus":[I
    .end local v3    # "program":I
    .end local v4    # "vertexShader":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public draw(I[F)V
    .locals 8
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F

    .prologue
    const/4 v6, 0x0

    .line 120
    iget-object v3, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/pip/opengl/EffectRenderer;->draw(I[FLjava/nio/FloatBuffer;Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;[FZZ)V

    .line 121
    return-void
.end method

.method public draw(I[FLjava/nio/FloatBuffer;)V
    .locals 8
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F
    .param p3, "vertexBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v6, 0x0

    .line 124
    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/pip/opengl/EffectRenderer;->draw(I[FLjava/nio/FloatBuffer;Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;[FZZ)V

    .line 125
    return-void
.end method

.method public draw(I[FLjava/nio/FloatBuffer;Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;[FZZ)V
    .locals 7
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F
    .param p3, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p4, "pipMode"    # Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;
    .param p5, "vertexFloat"    # [F
    .param p6, "isMirror"    # Z
    .param p7, "isHorizontal"    # Z

    .prologue
    const/4 v6, 0x0

    const/16 v2, 0x1406

    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 129
    const-string v0, "ScreenDraw_Start"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p4, v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p5, p6, p7}, Lcom/android/camera/pip/opengl/EffectRenderer;->updateVertex([FZZ)[F

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/android/camera/pip/opengl/EffectRenderer;->createFloatBuffer(Ljava/nio/FloatBuffer;[F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    .line 132
    iget-object p3, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexUpdateBuffer:Ljava/nio/FloatBuffer;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-ne p3, v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/EffectRenderer;->getRendererWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/EffectRenderer;->getRendererHeight()I

    move-result v5

    invoke-static {v3, v3, v0, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v6, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 137
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 140
    :cond_1
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 142
    invoke-virtual {p3, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maPositionHandle:I

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 145
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne p4, v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 158
    :goto_0
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 159
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 161
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muPosMtxHandle:I

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 162
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muTexRotateMtxHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 164
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->muSamplerHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 166
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 167
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 169
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/pip/opengl/EffectRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 170
    sget-object v0, Lcom/android/camera/pip/opengl/EffectRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/EffectRenderer;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 171
    const-string v0, "ScreenDraw_End"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 172
    return-void

    .line 149
    :cond_2
    invoke-static {p4}, Lcom/android/camera/pip/opengl/GLRenderer;->isSubAndFullMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureFullBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget v0, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->maTexCoordHandle:I

    iget-object v5, p0, Lcom/android/camera/pip/opengl/EffectRenderer;->mTextureHalfBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0
.end method
