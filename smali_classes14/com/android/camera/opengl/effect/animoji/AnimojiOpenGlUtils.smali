.class public Lcom/android/camera/opengl/effect/animoji/AnimojiOpenGlUtils;
.super Ljava/lang/Object;
.source "AnimojiOpenGlUtils.java"


# static fields
.field public static final NO_TEXTURE:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "strVSource"    # Ljava/lang/String;
    .param p1, "strFSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 106
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 107
    .local v3, "link":[I
    const v5, 0x8b31

    invoke-static {p0, v5}, Lcom/android/camera/opengl/effect/animoji/AnimojiOpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "iVShader":I
    if-nez v2, :cond_0

    .line 109
    const-string v5, "Load Program"

    const-string v6, "Vertex Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 132
    :goto_0
    return v1

    .line 112
    :cond_0
    const v5, 0x8b30

    invoke-static {p1, v5}, Lcom/android/camera/opengl/effect/animoji/AnimojiOpenGlUtils;->loadShader(Ljava/lang/String;I)I

    move-result v0

    .line 113
    .local v0, "iFShader":I
    if-nez v0, :cond_1

    .line 114
    const-string v5, "Load Program"

    const-string v6, "Fragment Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 120
    .local v1, "iProgId":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 121
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 123
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 125
    const v5, 0x8b82

    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 126
    aget v5, v3, v4

    if-gtz v5, :cond_2

    .line 127
    const-string v5, "Load Program"

    const-string v6, "Linking Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 128
    goto :goto_0

    .line 130
    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method public static loadShader(Ljava/lang/String;I)I
    .locals 6
    .param p0, "strSource"    # Ljava/lang/String;
    .param p1, "iType"    # I

    .prologue
    const/4 v2, 0x0

    .line 90
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 91
    .local v0, "compiled":[I
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 92
    .local v1, "iShader":I
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 93
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 94
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 95
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 96
    const-string v3, "Load Shader Failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Compilation\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 99
    .end local v1    # "iShader":I
    :cond_0
    return v1
.end method

.method public static loadTexture(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # I

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/effect/animoji/AnimojiOpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v1

    return v1
.end method

.method public static loadTexture(Landroid/graphics/Bitmap;IZ)I
    .locals 7
    .param p0, "img"    # Landroid/graphics/Bitmap;
    .param p1, "usedTexId"    # I
    .param p2, "recycle"    # Z

    .prologue
    const/4 v6, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v3, 0xde1

    const/4 v2, 0x0

    .line 37
    new-array v0, v6, [I

    .line 38
    .local v0, "textures":[I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 39
    invoke-static {v6, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 40
    aget v1, v0, v2

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 41
    const/16 v1, 0x2800

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 43
    const/16 v1, 0x2801

    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 45
    const/16 v1, 0x2802

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 47
    const/16 v1, 0x2803

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 50
    invoke-static {v3, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 51
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 59
    :goto_0
    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    :cond_0
    aget v1, v0, v2

    return v1

    .line 55
    :cond_1
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 56
    invoke-static {v3, v2, v2, v2, p0}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    .line 57
    aput p1, v0, v2

    goto :goto_0
.end method

.method public static loadTexture(Ljava/nio/IntBuffer;Landroid/hardware/Camera$Size;I)I
    .locals 13
    .param p0, "data"    # Ljava/nio/IntBuffer;
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "usedTexId"    # I

    .prologue
    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/16 v2, 0x1908

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 66
    const/4 v3, 0x1

    new-array v12, v3, [I

    .line 67
    .local v12, "textures":[I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 68
    const/4 v3, 0x1

    invoke-static {v3, v12, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 69
    aget v3, v12, v1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 70
    const/16 v3, 0x2800

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 72
    const/16 v3, 0x2801

    invoke-static {v0, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 74
    const/16 v3, 0x2802

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 76
    const/16 v3, 0x2803

    invoke-static {v0, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 78
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v7, 0x1401

    move v5, v1

    move v6, v2

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 86
    :goto_0
    aget v0, v12, v1

    return v0

    .line 81
    :cond_0
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 82
    iget v7, p1, Landroid/hardware/Camera$Size;->width:I

    iget v8, p1, Landroid/hardware/Camera$Size;->height:I

    const/16 v10, 0x1401

    move v3, v0

    move v4, v1

    move v5, v1

    move v6, v1

    move v9, v2

    move-object v11, p0

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 84
    aput p2, v12, v1

    goto :goto_0
.end method

.method public static rnd(FF)F
    .locals 4
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 136
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v0, v2

    .line 137
    .local v0, "fRandNum":F
    sub-float v1, p1, p0

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    return v1
.end method
