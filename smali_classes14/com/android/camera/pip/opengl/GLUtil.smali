.class public Lcom/android/camera/pip/opengl/GLUtil;
.super Ljava/lang/Object;
.source "GLUtil.java"


# static fields
.field public static GL_180:[F = null

.field public static GL_270:[F = null

.field public static GL_90:[F = null

.field public static final IDENTITY_MATRIX:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "GLUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 42
    new-array v0, v2, [F

    sput-object v0, Lcom/android/camera/pip/opengl/GLUtil;->IDENTITY_MATRIX:[F

    .line 43
    sget-object v0, Lcom/android/camera/pip/opengl/GLUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 244
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_90:[F

    .line 245
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_180:[F

    .line 246
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_270:[F

    return-void

    .line 244
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 245
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 246
    :array_2
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindPreviewTexure(I)V
    .locals 4
    .param p0, "texId"    # I

    .prologue
    const v3, 0x812f

    const v2, 0x46180400    # 9729.0f

    const v1, 0x8d65

    .line 226
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 227
    const/16 v0, 0x2801

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 229
    const/16 v0, 0x2800

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 232
    const/16 v0, 0x2802

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 234
    const/16 v0, 0x2803

    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 236
    return-void
.end method

.method public static checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 123
    const-string v1, "GLUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":eglGetError:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetError encountered (see log)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 113
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "GLUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 3
    .param p0, "location"    # I
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 135
    if-gez p0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to locate \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' in program"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p0, "coords"    # [F

    .prologue
    .line 181
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 182
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 184
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 186
    return-object v1
.end method

.method public static createIdentityMtx()[F
    .locals 2

    .prologue
    .line 239
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 240
    .local v0, "matrix":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 241
    return-object v0
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .prologue
    const/16 v3, 0x2601

    const/4 v2, 0x1

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 150
    new-array v10, v2, [I

    .line 153
    .local v10, "textureHandles":[I
    invoke-static {v2, v10, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 154
    aget v9, v10, v1

    .line 155
    .local v9, "textureHandle":I
    const-string v2, "glGenTextures"

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 158
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 164
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 166
    const-string v2, "loadImageTexture"

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 169
    const/16 v7, 0x1401

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, p3

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 171
    const-string v0, "loadImageTexture"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 173
    return v9
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 57
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/android/camera/pip/opengl/GLUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 58
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 84
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/android/camera/pip/opengl/GLUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 67
    .local v2, "program":I
    const-string v5, "glCreateProgram"

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 68
    if-nez v2, :cond_3

    .line 69
    const-string v5, "GLUtil"

    const-string v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 72
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 73
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 74
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 76
    new-array v0, v7, [I

    .line 77
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 78
    aget v4, v0, v4

    if-eq v4, v7, :cond_0

    .line 79
    const-string v4, "GLUtil"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v4, "GLUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 82
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;
    .param p2, "attribLocation"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 371
    const v6, 0x8b31

    invoke-static {v6, p0}, Lcom/android/camera/pip/opengl/GLUtil;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 372
    .local v4, "vertexShader":I
    if-nez v4, :cond_1

    move v3, v5

    .line 406
    :cond_0
    :goto_0
    return v3

    .line 375
    :cond_1
    const v6, 0x8b30

    invoke-static {v6, p1}, Lcom/android/camera/pip/opengl/GLUtil;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 376
    .local v2, "pixelShader":I
    if-nez v2, :cond_2

    move v3, v5

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 381
    .local v3, "program":I
    const-string v6, "glCreateProgram"

    invoke-static {v6}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 382
    if-nez v3, :cond_3

    .line 383
    const-string v6, "GLUtil"

    const-string v7, "Could not create program"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 386
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 387
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 388
    const-string v6, "glAttachShader"

    invoke-static {v6}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 390
    if-eqz p2, :cond_4

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, p2

    if-ge v0, v6, :cond_4

    .line 392
    aget-object v6, p2, v0

    invoke-static {v3, v0, v6}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glBindAttribLocation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    :cond_4
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 398
    new-array v1, v8, [I

    .line 399
    .local v1, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 400
    aget v5, v1, v5

    if-eq v5, v8, :cond_0

    .line 401
    const-string v5, "GLUtil"

    const-string v6, "Could not link program: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v5, "GLUtil"

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 404
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static deleteTextures([I)V
    .locals 3
    .param p0, "textureIds"    # [I

    .prologue
    .line 221
    const-string v0, "GLUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLUtil glDeleteTextures num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 223
    return-void
.end method

.method public static generateTextureIds(I)[I
    .locals 6
    .param p0, "num"    # I

    .prologue
    const/4 v5, 0x0

    .line 210
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GLUtil glGenTextures num = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-array v1, p0, [I

    .line 212
    .local v1, "textures":[I
    const v2, 0x8d40

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 213
    invoke-static {p0, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 214
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 215
    .local v0, "sizes":[I
    const/16 v2, 0xd33

    invoke-static {v2, v0, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 216
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL_MAX_TEXTURE_SIZE sizes[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1
.end method

.method public static getRotateMtx(I)[F
    .locals 1
    .param p0, "orientation"    # I

    .prologue
    .line 249
    sparse-switch p0, :sswitch_data_0

    .line 257
    invoke-static {}, Lcom/android/camera/pip/opengl/GLUtil;->createIdentityMtx()[F

    move-result-object v0

    :goto_0
    return-object v0

    .line 251
    :sswitch_0
    sget-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_90:[F

    goto :goto_0

    .line 253
    :sswitch_1
    sget-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_180:[F

    goto :goto_0

    .line 255
    :sswitch_2
    sget-object v0, Lcom/android/camera/pip/opengl/GLUtil;->GL_270:[F

    goto :goto_0

    .line 249
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 94
    .local v1, "shader":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glCreateShader type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 95
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 96
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 97
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 98
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 99
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 100
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v2, "GLUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 103
    const/4 v1, 0x0

    .line 105
    :cond_0
    return v1
.end method

.method public static logVersionInfo()V
    .locals 3

    .prologue
    .line 193
    const-string v0, "GLUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vendor  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f00

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v0, "GLUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "renderer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f01

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v0, "GLUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1f02

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public static transCoordinateByRatio([FZIF)[F
    .locals 10
    .param p0, "baseMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isUp"    # Z
    .param p2, "orientation"    # I
    .param p3, "targetRatio"    # F

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    .line 302
    array-length v3, p0

    new-array v2, v3, [F

    .line 303
    .local v2, "transposeMatrix":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 304
    aget v3, p0, v0

    aput v3, v2, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    if-eqz p1, :cond_1

    .line 308
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v2, v8

    .line 309
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v2, v9

    .line 315
    :goto_1
    array-length v3, p0

    new-array v1, v3, [F

    .line 316
    .local v1, "orientationMatrix":[F
    sparse-switch p2, :sswitch_data_0

    .line 350
    .end local v2    # "transposeMatrix":[F
    :goto_2
    return-object v2

    .line 311
    .end local v1    # "orientationMatrix":[F
    .restart local v2    # "transposeMatrix":[F
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v2, v6

    .line 312
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    aput v3, v2, v7

    goto :goto_1

    .line 318
    .restart local v1    # "orientationMatrix":[F
    :sswitch_0
    const/4 v3, 0x0

    aget v4, v2, v6

    aput v4, v1, v3

    .line 319
    const/4 v3, 0x0

    aget v3, v2, v3

    mul-float/2addr v3, v5

    aput v3, v1, v6

    .line 320
    const/4 v3, 0x2

    aget v4, v2, v7

    aput v4, v1, v3

    .line 321
    const/4 v3, 0x2

    aget v3, v2, v3

    mul-float/2addr v3, v5

    aput v3, v1, v7

    .line 322
    const/4 v3, 0x4

    aget v4, v2, v8

    aput v4, v1, v3

    .line 323
    const/4 v3, 0x4

    aget v3, v2, v3

    mul-float/2addr v3, v5

    aput v3, v1, v8

    .line 324
    const/4 v3, 0x6

    aget v4, v2, v9

    aput v4, v1, v3

    .line 325
    const/4 v3, 0x6

    aget v3, v2, v3

    mul-float/2addr v3, v5

    aput v3, v1, v9

    :goto_3
    move-object v2, v1

    .line 350
    goto :goto_2

    .line 328
    :sswitch_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 329
    aget v3, v2, v6

    mul-float/2addr v3, v5

    aput v3, v1, v6

    .line 330
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget v4, v2, v4

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 331
    aget v3, v2, v7

    mul-float/2addr v3, v5

    aput v3, v1, v7

    .line 332
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 333
    aget v3, v2, v8

    mul-float/2addr v3, v5

    aput v3, v1, v8

    .line 334
    const/4 v3, 0x6

    const/4 v4, 0x6

    aget v4, v2, v4

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 335
    aget v3, v2, v9

    mul-float/2addr v3, v5

    aput v3, v1, v9

    goto :goto_3

    .line 338
    :sswitch_2
    const/4 v3, 0x0

    aget v4, v2, v6

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 339
    const/4 v3, 0x0

    aget v3, v2, v3

    aput v3, v1, v6

    .line 340
    const/4 v3, 0x2

    aget v4, v2, v7

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 341
    const/4 v3, 0x2

    aget v3, v2, v3

    aput v3, v1, v7

    .line 342
    const/4 v3, 0x4

    aget v4, v2, v8

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 343
    const/4 v3, 0x4

    aget v3, v2, v3

    aput v3, v1, v8

    .line 344
    const/4 v3, 0x6

    aget v4, v2, v9

    mul-float/2addr v4, v5

    aput v4, v1, v3

    .line 345
    const/4 v3, 0x6

    aget v3, v2, v3

    aput v3, v1, v9

    goto :goto_3

    .line 316
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F
    .locals 6
    .param p0, "baseMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "targetRatio"    # F
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 261
    array-length v3, p0

    new-array v2, v3, [F

    .line 263
    .local v2, "transposeMatrix":[F
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_3

    .line 264
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    div-float v0, v3, v4

    .line 265
    .local v0, "cropRatio":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_8

    .line 266
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    .line 267
    aget v3, p0, v1

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_0

    .line 268
    aput v0, v2, v1

    .line 265
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    aget v3, p0, v1

    sub-float v4, v5, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 270
    sub-float v3, v5, v0

    aput v3, v2, v1

    goto :goto_1

    .line 272
    :cond_1
    aget v3, p0, v1

    aput v3, v2, v1

    goto :goto_1

    .line 275
    :cond_2
    aget v3, p0, v1

    aput v3, v2, v1

    goto :goto_1

    .line 278
    .end local v0    # "cropRatio":F
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    cmpl-float v3, v3, p1

    if-nez v3, :cond_4

    .line 297
    .end local p0    # "baseMatrix":[F
    :goto_2
    return-object p0

    .line 281
    .restart local p0    # "baseMatrix":[F
    :cond_4
    invoke-virtual {p2}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v3

    div-float/2addr v3, p1

    sub-float v3, v5, v3

    div-float v0, v3, v4

    .line 282
    .restart local v0    # "cropRatio":F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v3, p0

    if-ge v1, v3, :cond_8

    .line 283
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_5

    .line 284
    aget v3, p0, v1

    aput v3, v2, v1

    .line 282
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 286
    :cond_5
    aget v3, p0, v1

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_6

    .line 287
    aput v0, v2, v1

    goto :goto_4

    .line 288
    :cond_6
    aget v3, p0, v1

    sub-float v4, v5, v0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 289
    sub-float v3, v5, v0

    aput v3, v2, v1

    goto :goto_4

    .line 291
    :cond_7
    aget v3, p0, v1

    aput v3, v2, v1

    goto :goto_4

    :cond_8
    move-object p0, v2

    .line 297
    goto :goto_2
.end method

.method public static transToCenterCropRatio(FLcom/android/camera/util/Size;)F
    .locals 3
    .param p0, "targetRatio"    # F
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 412
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    cmpl-float v1, v1, p0

    if-lez v1, :cond_1

    .line 413
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    div-float v1, p0, v1

    sub-float v1, v0, v1

    div-float v0, v1, v2

    .line 419
    :cond_0
    :goto_0
    return v0

    .line 414
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    cmpl-float v1, v1, p0

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    div-float/2addr v1, p0

    sub-float v1, v0, v1

    div-float v0, v1, v2

    .local v0, "transposeRatio":F
    goto :goto_0
.end method

.method public static transToCropMatrix([FFF)[F
    .locals 3
    .param p0, "baseMatrix"    # [F
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "xCrop"    # F
    .param p2, "yCrop"    # F

    .prologue
    .line 354
    array-length v2, p0

    new-array v1, v2, [F

    .line 355
    .local v1, "transposeMatrix":[F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 356
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1

    .line 357
    aget v2, p0, v0

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    move v2, p1

    :goto_1
    aput v2, v1, v0

    .line 355
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    aget v2, p0, v0

    goto :goto_1

    .line 359
    :cond_1
    aget v2, p0, v0

    cmpl-float v2, v2, p2

    if-lez v2, :cond_2

    move v2, p2

    :goto_3
    aput v2, v1, v0

    goto :goto_2

    :cond_2
    aget v2, p0, v0

    goto :goto_3

    .line 362
    :cond_3
    return-object v1
.end method
