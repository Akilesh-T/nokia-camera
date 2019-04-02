.class public Lcom/pedro/encoder/utils/gl/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x12
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkEglError(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": EGL error: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 123
    const-string v1, "GlUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    return-void
.end method

.method public static createExternalTextures(I[II)V
    .locals 5
    .param p0, "cantidad"    # I
    .param p1, "texturesId"    # [I
    .param p2, "position"    # I

    .prologue
    const v4, 0x812f

    const v3, 0x46180400    # 9729.0f

    const v2, 0x8d65

    .line 86
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 88
    const v1, 0x84c0

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 89
    add-int v1, p2, v0

    aget v1, p1, v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 90
    const/16 v1, 0x2801

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 92
    const/16 v1, 0x2800

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 94
    const/16 v1, 0x2802

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 96
    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "vertexSource"    # Ljava/lang/String;
    .param p1, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 41
    const v5, 0x8b31

    invoke-static {v5, p0}, Lcom/pedro/encoder/utils/gl/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 42
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 68
    :cond_0
    :goto_0
    return v2

    .line 45
    :cond_1
    const v5, 0x8b30

    invoke-static {v5, p1}, Lcom/pedro/encoder/utils/gl/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 46
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 47
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 51
    .local v2, "program":I
    const-string v5, "glCreateProgram"

    invoke-static {v5}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 52
    if-nez v2, :cond_3

    .line 53
    const-string v5, "GlUtil"

    const-string v6, "Could not create program"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_3
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 56
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 57
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 58
    const-string v5, "glAttachShader"

    invoke-static {v5}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 59
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 60
    new-array v0, v7, [I

    .line 61
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 62
    aget v4, v0, v4

    if-eq v4, v7, :cond_0

    .line 63
    const-string v4, "GlUtil"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v4, "GlUtil"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 66
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createTextures(I[II)V
    .locals 5
    .param p0, "cantidad"    # I
    .param p1, "texturesId"    # [I
    .param p2, "position"    # I

    .prologue
    const v4, 0x812f

    const v3, 0x46180400    # 9729.0f

    const/16 v2, 0xde1

    .line 72
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 73
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_0

    .line 74
    const v1, 0x84c0

    add-int/2addr v1, p2

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 75
    add-int v1, p2, v0

    aget v1, p1, v1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 76
    const/16 v1, 0x2801

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 77
    const/16 v1, 0x2800

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 78
    const/16 v1, 0x2802

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 80
    const/16 v1, 0x2803

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public static getStringFromRaw(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 105
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 106
    .local v3, "is":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 107
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 108
    .local v2, "i":I
    :goto_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 109
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Landroid/content/res/Resources;
    :goto_1
    return-object v5

    .line 114
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    const-string v5, ""

    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 5
    .param p0, "shaderType"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 26
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

    invoke-static {v2}, Lcom/pedro/encoder/utils/gl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 27
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 28
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 29
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 30
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v4}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 31
    aget v2, v0, v4

    if-nez v2, :cond_0

    .line 32
    const-string v2, "GlUtil"

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

    .line 33
    const-string v2, "GlUtil"

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

    .line 34
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 35
    const/4 v1, 0x0

    .line 37
    :cond_0
    return v1
.end method
