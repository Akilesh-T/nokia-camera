.class public Lcom/android/camera/opengl/util/OpenglUtil;
.super Ljava/lang/Object;
.source "OpenglUtil.java"


# static fields
.field public static final CUBE:[F

.field public static final NOT_INIT:I = -0x1

.field public static final NO_DRAWN_ANIMOJI:I = -0x2

.field public static final NO_TEXTURE:I = -0x1

.field public static final ON_DRAWN:I = 0x1

.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F

.field public static final TEXTURE_ROTATED_ORIGIN:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 18
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_NO_ROTATION:[F

    .line 19
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_90:[F

    .line 20
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_180:[F

    .line 21
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_270:[F

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_ORIGIN:[F

    .line 27
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->CUBE:[F

    return-void

    .line 18
    nop

    :array_0
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

    .line 19
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 20
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 21
    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 25
    :array_4
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

    .line 27
    :array_5
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
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteTextureID(I)V
    .locals 3
    .param p0, "texture"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 88
    new-array v0, v2, [I

    aput p0, v0, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 89
    return-void
.end method

.method private static flip(F)F
    .locals 2
    .param p0, "i"    # F

    .prologue
    const/4 v0, 0x0

    .line 57
    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    :cond_0
    return v0
.end method

.method public static getRotation(IZZ)[F
    .locals 9
    .param p0, "rotation"    # I
    .param p1, "flipHorizontal"    # Z
    .param p2, "flipVertical"    # Z

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    sparse-switch p0, :sswitch_data_0

    .line 42
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_NO_ROTATION:[F

    .local v0, "rotatedTex":[F
    move-object v1, v0

    .line 45
    .end local v0    # "rotatedTex":[F
    .local v1, "rotatedTex":[F
    :goto_0
    if-eqz p1, :cond_0

    .line 46
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v2

    aput v2, v0, v4

    aget v2, v1, v5

    aput v2, v0, v5

    aget v2, v1, v6

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v2

    aput v2, v0, v6

    aget v2, v1, v7

    aput v2, v0, v7

    aget v2, v1, v8

    .line 47
    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v2

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    invoke-static {v3}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v1, v3

    aput v3, v0, v2

    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 49
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    :cond_0
    if-eqz p2, :cond_1

    .line 50
    const/16 v2, 0x8

    new-array v0, v2, [F

    aget v2, v1, v4

    aput v2, v0, v4

    aget v2, v1, v5

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v2

    aput v2, v0, v5

    aget v2, v1, v6

    aput v2, v0, v6

    aget v2, v1, v7

    invoke-static {v2}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v2

    aput v2, v0, v7

    aget v2, v1, v8

    aput v2, v0, v8

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget v3, v1, v3

    .line 51
    invoke-static {v3}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget v3, v1, v3

    aput v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget v3, v1, v3

    invoke-static {v3}, Lcom/android/camera/opengl/util/OpenglUtil;->flip(F)F

    move-result v3

    aput v3, v0, v2

    .line 53
    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    :goto_1
    return-object v0

    .line 33
    .end local v0    # "rotatedTex":[F
    :sswitch_0
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_90:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 34
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto :goto_0

    .line 36
    .end local v1    # "rotatedTex":[F
    :sswitch_1
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_180:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 37
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto/16 :goto_0

    .line 39
    .end local v1    # "rotatedTex":[F
    :sswitch_2
    sget-object v0, Lcom/android/camera/opengl/util/OpenglUtil;->TEXTURE_ROTATED_270:[F

    .restart local v0    # "rotatedTex":[F
    move-object v1, v0

    .line 40
    .end local v0    # "rotatedTex":[F
    .restart local v1    # "rotatedTex":[F
    goto/16 :goto_0

    :cond_1
    move-object v0, v1

    .end local v1    # "rotatedTex":[F
    .restart local v0    # "rotatedTex":[F
    goto :goto_1

    .line 31
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public static initCameraTextureID()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const v2, 0x8d65

    .line 77
    new-array v0, v1, [I

    .line 78
    .local v0, "mTextureOutID":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 79
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 81
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 82
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 83
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 84
    aget v1, v0, v3

    return v1
.end method

.method public static initTextureID()I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const v5, 0x47012f00    # 33071.0f

    const v4, 0x46180400    # 9729.0f

    const/4 v3, 0x0

    const/16 v2, 0xde1

    .line 64
    new-array v0, v1, [I

    .line 65
    .local v0, "mTextureOutID":[I
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 66
    aget v1, v0, v3

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 67
    const/16 v1, 0x2800

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 68
    const/16 v1, 0x2801

    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 69
    const/16 v1, 0x2802

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 70
    const/16 v1, 0x2803

    invoke-static {v2, v1, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 71
    aget v1, v0, v3

    return v1
.end method

.method public static loadFromRawFile(Landroid/content/Context;I)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawId"    # I

    .prologue
    .line 139
    const/4 v5, 0x0

    .line 141
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 142
    .local v4, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, "ch":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 144
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 145
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 152
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "ch":I
    .end local v4    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v5

    .line 147
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "ch":I
    .restart local v4    # "in":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 148
    .local v1, "buff":[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 149
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 150
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .end local v5    # "result":Ljava/lang/String;
    .local v6, "result":Ljava/lang/String;
    :try_start_2
    const-string v7, "\\r\\n"

    const-string v8, "\n"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_2

    .line 152
    .end local v5    # "result":Ljava/lang/String;
    .restart local v6    # "result":Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "strVSource"    # Ljava/lang/String;
    .param p1, "strFSource"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v5, 0x1

    new-array v3, v5, [I

    .line 96
    .local v3, "link":[I
    const v5, 0x8b31

    invoke-static {p0, v5}, Lcom/android/camera/opengl/util/OpenglUtil;->loadShader(Ljava/lang/String;I)I

    move-result v2

    .line 97
    .local v2, "iVShader":I
    if-nez v2, :cond_0

    .line 98
    const-string v5, "Load Program"

    const-string v6, "Vertex Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 121
    :goto_0
    return v1

    .line 101
    :cond_0
    const v5, 0x8b30

    invoke-static {p1, v5}, Lcom/android/camera/opengl/util/OpenglUtil;->loadShader(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "iFShader":I
    if-nez v0, :cond_1

    .line 103
    const-string v5, "Load Program"

    const-string v6, "Fragment Shader Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 104
    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    .line 109
    .local v1, "iProgId":I
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 110
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 112
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 114
    const v5, 0x8b82

    invoke-static {v1, v5, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 115
    aget v5, v3, v4

    if-gtz v5, :cond_2

    .line 116
    const-string v5, "Load Program"

    const-string v6, "Linking Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 117
    goto :goto_0

    .line 119
    :cond_2
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    goto :goto_0
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .locals 6
    .param p0, "strSource"    # Ljava/lang/String;
    .param p1, "iType"    # I

    .prologue
    const/4 v2, 0x0

    .line 125
    const/4 v3, 0x1

    new-array v0, v3, [I

    .line 126
    .local v0, "compiled":[I
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 127
    .local v1, "iShader":I
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 128
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 129
    const v3, 0x8b81

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 130
    aget v3, v0, v2

    if-nez v3, :cond_0

    .line 131
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

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 134
    .end local v1    # "iShader":I
    :cond_0
    return v1
.end method
