.class public Lcom/android/camera/pip/opengl/ScreenRenderer;
.super Lcom/android/camera/pip/opengl/Renderer;
.source "ScreenRenderer.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static TEXTURE:[F

.field private static VERTEX:[F


# instance fields
.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

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

    sput-object v0, Lcom/android/camera/pip/opengl/ScreenRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 47
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/ScreenRenderer;->VERTEX:[F

    .line 48
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/ScreenRenderer;->TEXTURE:[F

    return-void

    .line 47
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

    .line 48
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

    const/4 v2, -0x1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/camera/pip/opengl/Renderer;-><init>(Landroid/content/Context;)V

    .line 19
    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maPositionHandle:I

    .line 20
    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muTexRotateMtxHandle:I

    .line 21
    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maTexCoordHandle:I

    .line 22
    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muPosMtxHandle:I

    .line 23
    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muSamplerHandle:I

    .line 28
    const-string v2, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexRotateMtx;\nvarying   vec2 vTexCoord;\nvoid main() {\n  gl_Position = uPosMtx * aPosition;\n  vTexCoord   = (uTexRotateMtx * aTexCoord).xy;\n}\n"

    iput-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->sVertexShaderCode:Ljava/lang/String;

    .line 39
    const-string v2, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2      vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

    iput-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->sFragmentShaderCode:Ljava/lang/String;

    .line 53
    iget v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    const-string v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maPositionHandle:I

    .line 54
    iget v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    const-string v3, "aTexCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maTexCoordHandle:I

    .line 56
    iget v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    const-string v3, "uPosMtx"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muPosMtxHandle:I

    .line 57
    iget v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    const-string v3, "uTexRotateMtx"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muTexRotateMtxHandle:I

    .line 59
    iget v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    const-string v3, "uSampler"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muSamplerHandle:I

    .line 60
    sget-object v2, Lcom/android/camera/pip/opengl/ScreenRenderer;->VERTEX:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 61
    .local v1, "vertexBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 63
    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/android/camera/pip/opengl/ScreenRenderer;->VERTEX:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 64
    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    sget-object v2, Lcom/android/camera/pip/opengl/ScreenRenderer;->TEXTURE:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 67
    .local v0, "textureBB":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 69
    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/android/camera/pip/opengl/ScreenRenderer;->TEXTURE:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 70
    iget-object v2, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    return-void
.end method


# virtual methods
.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    const/4 v1, 0x0

    .local v1, "fragmentShaderCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 76
    .local v5, "vertexShaderCode":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.frag.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v6, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.vert.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 79
    :goto_0
    const v6, 0x8b31

    const-string v7, "attribute vec4 aPosition;\nattribute vec4 aTexCoord;\nuniform   mat4 uPosMtx;\nuniform   mat4 uTexRotateMtx;\nvarying   vec2 vTexCoord;\nvoid main() {\n  gl_Position = uPosMtx * aPosition;\n  vTexCoord   = (uTexRotateMtx * aTexCoord).xy;\n}\n"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/pip/opengl/ScreenRenderer;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "vertexShader":I
    const v6, 0x8b30

    const-string v7, "precision mediump float;\nuniform sampler2D uSampler;\nvarying vec2      vTexCoord;\nvoid main() {\n  gl_FragColor = texture2D(uSampler, vTexCoord);\n}\n"

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/pip/opengl/ScreenRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 82
    .local v3, "program":I
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 83
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 84
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 86
    new-array v2, v9, [I

    .line 87
    .local v2, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 88
    aget v6, v2, v8

    if-eq v6, v9, :cond_0

    .line 89
    sget-object v6, Lcom/android/camera/pip/opengl/ScreenRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Could not link program:"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 90
    sget-object v6, Lcom/android/camera/pip/opengl/ScreenRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 92
    const/4 v3, 0x0

    .line 94
    :cond_0
    return v3

    .line 78
    .end local v0    # "fragmentShader":I
    .end local v2    # "linkStatus":[I
    .end local v3    # "program":I
    .end local v4    # "vertexShader":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public draw(I[F)V
    .locals 7
    .param p1, "textID"    # I
    .param p2, "transMatrix"    # [F

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 98
    const-string v0, "ScreenDraw_Start"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/ScreenRenderer;->getRendererWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/pip/opengl/ScreenRenderer;->getRendererHeight()I

    move-result v2

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 100
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 101
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 103
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maPositionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 108
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maTexCoordHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 111
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 112
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->maTexCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 114
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muPosMtxHandle:I

    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v1

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 115
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muTexRotateMtxHandle:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 117
    iget v0, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->muSamplerHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 119
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 120
    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    const/4 v0, 0x4

    sget-object v1, Lcom/android/camera/pip/opengl/ScreenRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/ScreenRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 123
    sget-object v0, Lcom/android/camera/pip/opengl/ScreenRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/pip/opengl/ScreenRenderer;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 125
    const-string v0, "ScreenDraw_End"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 126
    return-void
.end method
