.class public Lcom/laifeng/sopcastsdk/video/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 116
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 117
    const-string v1, "GlUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": eglGetError: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "eglGetError encountered (see log)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "GlUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glGetError: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "glGetError encountered (see log)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    return-void
.end method

.method public static createIdentityMtx()[F
    .locals 2

    .prologue
    .line 66
    const/16 v1, 0x10

    new-array v0, v1, [F

    .line 67
    .local v0, "m":[F
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 68
    return-object v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    const v4, 0x8b31

    invoke-static {v4, p0}, Lcom/laifeng/sopcastsdk/video/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 73
    .local v3, "vs":I
    const v4, 0x8b30

    invoke-static {v4, p1}, Lcom/laifeng/sopcastsdk/video/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "fs":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 75
    .local v2, "program":I
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 76
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 77
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 78
    new-array v1, v6, [I

    .line 79
    .local v1, "linkStatus":[I
    const v4, 0x8b82

    invoke-static {v2, v4, v1, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 80
    aget v4, v1, v5

    if-eq v4, v6, :cond_0

    .line 81
    const-string v4, "GlUtil"

    const-string v5, "Could not link program:"

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "GlUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 84
    const/4 v2, 0x0

    .line 86
    :cond_0
    return v2
.end method

.method public static createSquareVtx()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 18
    const/16 v3, 0x14

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 25
    .local v2, "vtx":[F
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 28
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 29
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 30
    return-object v1

    .line 18
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static createTexCoordBuffer()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 50
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 57
    .local v2, "vtx":[F
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 58
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 60
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 61
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    return-object v1

    .line 50
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static createVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 34
    const/16 v3, 0xc

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 41
    .local v2, "vtx":[F
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 42
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 43
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 44
    .local v1, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    return-object v1

    .line 34
    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
    .end array-data
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 91
    .local v1, "shader":I
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 92
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 94
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 95
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 96
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 97
    const-string v2, "GlUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader(TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "GlUtil"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laifeng/sopcastsdk/utils/SopCastLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 100
    const/4 v1, 0x0

    .line 103
    :cond_0
    return v1
.end method
