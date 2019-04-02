.class public Lcom/android/camera/opengl/effect/theme/AnimRenderer;
.super Ljava/lang/Object;
.source "AnimRenderer.java"


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private HALF_TEXTURE:[F

.field private final ORI_HALF_TEXTURE:[F

.field private final ORI_HALF_UP_TEXTURE:[F

.field private final ORI_TEXTURE:[F

.field private TEXTURE:[F

.field private VERTEX:[F

.field private aPositionHandle:I

.field private aTextureHandle:I

.field private mAnimHeight:I

.field private mAnimWidth:I

.field private final mFragmentShader:Ljava/lang/String;

.field private mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

.field private mLock:Ljava/lang/Object;

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mSTMatrix:[F

.field private mTextBitmap:Landroid/graphics/Bitmap;

.field private mTextureCoordBuf:Ljava/nio/FloatBuffer;

.field private final mVertexShader:Ljava/lang/String;

.field private mVerticesBuf:Ljava/nio/FloatBuffer;

.field private uMVPMatrixHandle:I

.field private uSTMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "AnimRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/16 v4, 0x10

    const/4 v3, -0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->VERTEX:[F

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    .line 50
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_TEXTURE:[F

    .line 62
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    .line 68
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_UP_TEXTURE:[F

    .line 78
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVertexShader:Ljava/lang/String;

    .line 89
    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\n\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mFragmentShader:Ljava/lang/String;

    .line 98
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mMVPMatrix:[F

    .line 99
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mSTMatrix:[F

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mLock:Ljava/lang/Object;

    .line 112
    iput v2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    .line 113
    iput v2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    .line 116
    sget-object v0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iput p1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    .line 118
    iput p2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    .line 120
    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\n\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    .line 121
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create Program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aPositionHandle:I

    .line 126
    const-string v0, "glGetAttribLocation aPosition"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aPositionHandle:I

    if-ne v0, v3, :cond_1

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    .line 132
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    if-ne v0, v3, :cond_2

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_2
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uMVPMatrixHandle:I

    .line 138
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uMVPMatrixHandle:I

    if-ne v0, v3, :cond_3

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    const-string v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uSTMatrixHandle:I

    .line 144
    const-string v0, "glGetUniformLocation uSTMatrix"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 145
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uSTMatrixHandle:I

    if-ne v0, v3, :cond_4

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get attrib location for uSTMatrix"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->VERTEX:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 151
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    .line 152
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->VERTEX:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextureCoordBuf:Ljava/nio/FloatBuffer;

    .line 157
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextureCoordBuf:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    .line 162
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mMVPMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mSTMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 168
    return-void

    .line 38
    nop

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

    .line 44
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 50
    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 56
    :array_3
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 62
    :array_4
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 68
    :array_5
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 393
    sget-object v5, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "vertexShader"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 394
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 395
    .local v3, "vertexShader":I
    sget-object v5, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vertexShader = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 396
    if-nez v3, :cond_1

    move v2, v4

    .line 423
    :cond_0
    :goto_0
    return v2

    .line 399
    :cond_1
    sget-object v5, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "pixelShader"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 400
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "pixelShader":I
    sget-object v5, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pixelShader = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 402
    if-nez v1, :cond_2

    move v2, v4

    .line 403
    goto :goto_0

    .line 406
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 407
    .local v2, "program":I
    sget-object v5, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "program = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    if-eqz v2, :cond_0

    .line 409
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 410
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 411
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 412
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 413
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 414
    new-array v0, v8, [I

    .line 415
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 416
    aget v4, v0, v4

    if-eq v4, v8, :cond_0

    .line 417
    sget-object v4, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not link mProgram: "

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 418
    sget-object v4, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 419
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 420
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 376
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 377
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 378
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 379
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 380
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 381
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 382
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 383
    sget-object v2, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    sget-object v2, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 386
    const/4 v1, 0x0

    .line 389
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private rotateVertex(Ljava/nio/FloatBuffer;ILcom/android/camera/opengl/dualsight/DualSightMode;F)V
    .locals 15
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "angle"    # I
    .param p3, "dsMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p4, "cropRatio"    # F

    .prologue
    .line 172
    const/16 v10, 0x8

    new-array v7, v10, [F

    .line 173
    .local v7, "vertex":[F
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 176
    sget-object v10, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_SUB_SLAVE_FULL:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p3

    if-eq v0, v10, :cond_0

    sget-object v10, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_c

    .line 177
    :cond_0
    const/16 v10, 0x5a

    move/from16 v0, p2

    if-eq v0, v10, :cond_1

    const/16 v10, 0x10e

    move/from16 v0, p2

    if-ne v0, v10, :cond_8

    .line 178
    :cond_1
    const/4 v8, 0x0

    .local v8, "yResolution":F
    const/4 v4, 0x0

    .line 179
    .local v4, "tScale":F
    iget v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    iget v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    if-gt v10, v11, :cond_2

    .line 180
    iget v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 182
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .line 184
    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x5

    aget v11, v7, v11

    sub-float v9, v10, v11

    .line 185
    .local v9, "y_offset":F
    mul-float/2addr v9, v8

    .line 187
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v7

    if-ge v1, v10, :cond_8

    .line 188
    rem-int/lit8 v10, v1, 0x2

    if-nez v10, :cond_4

    .line 187
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_4
    const/4 v10, 0x1

    if-eq v1, v10, :cond_5

    const/4 v10, 0x3

    if-ne v1, v10, :cond_6

    .line 190
    :cond_5
    aget v10, v7, v1

    sub-float/2addr v10, v9

    aput v10, v7, v1

    goto :goto_1

    .line 191
    :cond_6
    const/4 v10, 0x5

    if-eq v1, v10, :cond_7

    const/4 v10, 0x7

    if-ne v1, v10, :cond_3

    .line 192
    :cond_7
    aget v10, v7, v1

    add-float/2addr v10, v9

    aput v10, v7, v1

    goto :goto_1

    .line 196
    .end local v1    # "i":I
    .end local v4    # "tScale":F
    .end local v8    # "yResolution":F
    .end local v9    # "y_offset":F
    :cond_8
    const/16 v10, 0x5a

    move/from16 v0, p2

    if-ne v0, v10, :cond_a

    .line 197
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 198
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x4

    iget v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 209
    :goto_2
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextureCoordBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 210
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextureCoordBuf:Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    :cond_9
    :goto_3
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 285
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 286
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 288
    invoke-static/range {p2 .. p2}, Lcom/android/camera/pip/opengl/GLUtil;->getRotateMtx(I)[F

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mSTMatrix:[F

    .line 289
    return-void

    .line 200
    :cond_a
    const/16 v10, 0x10e

    move/from16 v0, p2

    if-ne v0, v10, :cond_b

    .line 201
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x2

    iget v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    .line 202
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x6

    iget v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v12, v12

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    aput v12, v10, v11

    goto :goto_2

    .line 204
    :cond_b
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_TEXTURE:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 205
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_TEXTURE:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    aput v12, v10, v11

    .line 206
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_TEXTURE:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    .line 207
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TEXTURE:[F

    const/4 v11, 0x6

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_TEXTURE:[F

    const/4 v13, 0x6

    aget v12, v12, v13

    aput v12, v10, v11

    goto :goto_2

    .line 212
    :cond_c
    sget-object v10, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p3

    if-eq v0, v10, :cond_d

    sget-object v10, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p3

    if-ne v0, v10, :cond_9

    .line 214
    :cond_d
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 215
    .local v2, "scale":F
    const/16 v10, 0x5a

    move/from16 v0, p2

    if-eq v0, v10, :cond_e

    const/16 v10, 0x10e

    move/from16 v0, p2

    if-ne v0, v10, :cond_12

    .line 216
    :cond_e
    const/4 v8, 0x0

    .restart local v8    # "yResolution":F
    const/4 v4, 0x0

    .line 217
    .restart local v4    # "tScale":F
    iget v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    iget v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    if-gt v10, v11, :cond_f

    .line 218
    iget v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 220
    :cond_f
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v4

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v10, v11

    .line 222
    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x5

    aget v11, v7, v11

    sub-float v9, v10, v11

    .line 223
    .restart local v9    # "y_offset":F
    mul-float/2addr v9, v8

    .line 225
    const/4 v10, 0x1

    aget v10, v7, v10

    const/4 v11, 0x5

    aget v11, v7, v11

    sub-float v3, v10, v11

    .line 226
    .local v3, "screenWidth":F
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v6, v10, v9

    .line 227
    .local v6, "themeWith":F
    sub-float v10, v3, v6

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 228
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_10

    const/4 v9, 0x0

    .line 231
    :cond_10
    const/4 v10, 0x1

    aget v11, v7, v10

    sub-float/2addr v11, v9

    aput v11, v7, v10

    .line 232
    const/4 v10, 0x3

    aget v11, v7, v10

    sub-float/2addr v11, v9

    aput v11, v7, v10

    .line 235
    const/4 v10, 0x5

    aget v11, v7, v10

    add-float/2addr v11, v9

    aput v11, v7, v10

    .line 236
    const/4 v10, 0x7

    aget v11, v7, v10

    add-float/2addr v11, v9

    aput v11, v7, v10

    .line 254
    .end local v3    # "screenWidth":F
    .end local v4    # "tScale":F
    .end local v6    # "themeWith":F
    .end local v8    # "yResolution":F
    .end local v9    # "y_offset":F
    :goto_4
    const/16 v10, 0x5a

    move/from16 v0, p2

    if-eq v0, v10, :cond_11

    const/16 v10, 0x10e

    move/from16 v0, p2

    if-ne v0, v10, :cond_14

    .line 255
    :cond_11
    iget v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v5, v10, v11

    .line 257
    .local v5, "texture_offset":F
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v13, v13

    iget v14, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 258
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    iget v13, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimWidth:I

    int-to-float v13, v13

    iget v14, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mAnimHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 259
    const/16 v10, 0x5a

    move/from16 v0, p2

    if-ne v0, v10, :cond_13

    .line 260
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x0

    aput v5, v10, v11

    .line 261
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x4

    aput v5, v10, v11

    .line 276
    .end local v5    # "texture_offset":F
    :goto_5
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    const/16 v10, 0xb4

    move/from16 v0, p2

    if-ne v0, v10, :cond_15

    .line 278
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_UP_TEXTURE:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3

    .line 247
    :cond_12
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v7, v11

    mul-float v12, p4, v2

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 248
    const/4 v10, 0x4

    const/4 v11, 0x4

    aget v11, v7, v11

    mul-float v12, p4, v2

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 249
    const/4 v10, 0x2

    const/4 v11, 0x2

    aget v11, v7, v11

    mul-float v12, p4, v2

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 250
    const/4 v10, 0x6

    const/4 v11, 0x6

    aget v11, v7, v11

    mul-float v12, p4, v2

    sub-float/2addr v11, v12

    aput v11, v7, v10

    goto/16 :goto_4

    .line 264
    .restart local v5    # "texture_offset":F
    :cond_13
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    aput v12, v10, v11

    .line 265
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x6

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    aput v12, v10, v11

    goto :goto_5

    .line 269
    .end local v5    # "texture_offset":F
    :cond_14
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 270
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x3

    aget v12, v12, v13

    aput v12, v10, v11

    .line 271
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 272
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    aput v12, v10, v11

    .line 273
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x2

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    .line 274
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    const/4 v11, 0x6

    iget-object v12, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->ORI_HALF_TEXTURE:[F

    const/4 v13, 0x6

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_5

    .line 280
    :cond_15
    iget-object v10, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    iget-object v11, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->HALF_TEXTURE:[F

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3
.end method


# virtual methods
.method public draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;IF)V
    .locals 10
    .param p1, "vertexBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "dsMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p3, "screenAngle"    # I
    .param p4, "cropRatio"    # F

    .prologue
    const/16 v2, 0x8

    .line 291
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 292
    :cond_0
    sget-object v0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Not valid vertexBuffer, please check."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->rotateVertex(Ljava/nio/FloatBuffer;ILcom/android/camera/opengl/dualsight/DualSightMode;F)V

    .line 298
    iget-object v9, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 299
    const/16 v0, 0xbe2

    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 300
    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 301
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 303
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 304
    const-string v0, "glUseProgram"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    .line 307
    .local v1, "stride":I
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 309
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 310
    const-string v0, "glEnableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 312
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aPositionHandle:I

    const/16 v2, 0x1406

    const/4 v3, 0x0

    mul-int/lit8 v4, v1, 0x4

    iget-object v5, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mVerticesBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 313
    const-string v0, "glVertexAttribPointer aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 315
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 316
    const-string v0, "glEnableVertexAttribArray aTextureHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 318
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_UP_SLAVE_DOWN:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-ne p2, v0, :cond_3

    .line 320
    :cond_2
    iget v2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mHalfTextureCoordBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 324
    :goto_1
    const-string v0, "glVertexAttribPointer aTextureHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x1

    new-array v8, v0, [I

    .line 327
    .local v8, "textureHandles":[I
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v8, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 328
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 329
    const/16 v0, 0xde1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 330
    const/16 v0, 0xde1

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 332
    const/16 v0, 0xde1

    const/16 v2, 0x2801

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 334
    const/16 v0, 0xde1

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 336
    const/16 v0, 0xde1

    const/16 v2, 0x2803

    const v3, 0x47012f00    # 33071.0f

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 338
    const-string v0, "glTexParameterf"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 339
    const/16 v0, 0xde1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 340
    const-string v0, "texImage2D"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 342
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 343
    const/16 v0, 0xde1

    const/4 v2, 0x0

    aget v2, v8, v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 344
    const-string v0, "glBindTexture"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mMVPMatrix:[F

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 347
    const-string v0, "glUniformMatrix4fv - mMVPMatrix"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->uSTMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mSTMatrix:[F

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 349
    const-string v0, "glUniformMatrix4fv - mSTMatrix"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 352
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 355
    const-string v0, "glDisableVertexAttribArray aTextureHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 356
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 357
    const-string v0, "glDisableVertexAttribArray aPositionHandle"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 358
    const/16 v0, 0xde1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 359
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 361
    array-length v0, v8

    const/4 v2, 0x0

    invoke-static {v0, v8, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 362
    monitor-exit v9

    goto/16 :goto_0

    .end local v1    # "stride":I
    .end local v8    # "textureHandles":[I
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 322
    .restart local v1    # "stride":I
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->aTextureHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v7, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextureCoordBuf:Ljava/nio/FloatBuffer;

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 366
    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 368
    :try_start_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 370
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 371
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 372
    monitor-exit v2

    goto :goto_0

    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 2

    .prologue
    .line 427
    sget-object v0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 428
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    if-eqz v0, :cond_0

    .line 429
    iget v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 430
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mProgram:I

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/effect/theme/AnimRenderer;->mTextBitmap:Landroid/graphics/Bitmap;

    .line 436
    :cond_1
    return-void
.end method
