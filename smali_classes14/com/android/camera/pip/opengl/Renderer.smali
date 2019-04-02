.class public Lcom/android/camera/pip/opengl/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# static fields
.field protected static DRAW_ORDER:[S = null

.field private static final INTERVALS:I = 0x12c

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

.field protected DEFAULT_VERTEX_SHADER:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDrawFrameCount:I

.field protected mDrawListBuffer:Ljava/nio/ShortBuffer;

.field private mDrawStartTime:J

.field protected mPositionHandle:I

.field protected mProgram:I

.field private mRendererHeight:I

.field private mRendererWidth:I

.field protected mTextureCoordinateHandle:I

.field protected mTextureParamHandler:I

.field protected mTextureTransHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Renderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/Renderer;->DRAW_ORDER:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x1s
        0x3s
        0x2s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v1, "attribute vec4 position;\nuniform mat4 camTextureTransform;\nattribute vec4 camTexCoordinate;\nvarying vec2 v_CamTexCoordinate;\nvoid main()\n{\nv_CamTexCoordinate = (camTextureTransform * camTexCoordinate).xy;\ngl_Position = position;\n};\n"

    iput-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->DEFAULT_VERTEX_SHADER:Ljava/lang/String;

    .line 33
    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES camTexture;\nvarying vec2 v_CamTexCoordinate;\nvarying vec2 v_TexCoordinate;\nvoid main ()\n{\nvec4 cameraColor = texture2D(camTexture, v_CamTexCoordinate);\ngl_FragColor = cameraColor;\n}\n"

    iput-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    .line 49
    iput v4, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererWidth:I

    .line 50
    iput v4, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererHeight:I

    .line 53
    iput v4, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    .line 54
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawStartTime:J

    .line 66
    iput-object p1, p0, Lcom/android/camera/pip/opengl/Renderer;->mContext:Landroid/content/Context;

    .line 67
    iget-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->DEFAULT_VERTEX_SHADER:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/pip/opengl/Renderer;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/pip/opengl/Renderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mProgram:I

    .line 68
    const-string v1, "Renderer after mProgram"

    invoke-static {v1}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 69
    iget v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mProgram:I

    const-string v2, "camTexture"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mTextureParamHandler:I

    .line 70
    iget v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mProgram:I

    const-string v2, "position"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mPositionHandle:I

    .line 72
    sget-object v1, Lcom/android/camera/pip/opengl/Renderer;->DRAW_ORDER:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    .line 75
    iget-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    sget-object v2, Lcom/android/camera/pip/opengl/Renderer;->DRAW_ORDER:[S

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 76
    iget-object v1, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    return-void
.end method


# virtual methods
.method protected createFloatBuffer(Ljava/nio/FloatBuffer;[F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "floatBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "texCoor"    # [F

    .prologue
    .line 80
    if-nez p2, :cond_0

    move-object v0, p1

    .line 91
    .end local p1    # "floatBuffer":Ljava/nio/FloatBuffer;
    .local v0, "floatBuffer":Ljava/nio/FloatBuffer;
    :goto_0
    return-object v0

    .line 83
    .end local v0    # "floatBuffer":Ljava/nio/FloatBuffer;
    .restart local p1    # "floatBuffer":Ljava/nio/FloatBuffer;
    :cond_0
    if-nez p1, :cond_1

    .line 84
    sget-object v1, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "ByteBuffer.allocateDirect"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 88
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 89
    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, p1

    .line 91
    .end local p1    # "floatBuffer":Ljava/nio/FloatBuffer;
    .restart local v0    # "floatBuffer":Ljava/nio/FloatBuffer;
    goto :goto_0
.end method

.method public createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 109
    const/4 v1, 0x0

    .local v1, "fragmentShaderCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, "vertexShaderCode":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/pip/opengl/Renderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.frag.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    iget-object v6, p0, Lcom/android/camera/pip/opengl/Renderer;->mContext:Landroid/content/Context;

    const-string v7, "camera.vert.glsl"

    invoke-static {v6, v7}, Lcom/android/camera/pip/opengl/ShaderUtils;->getStringFromFileInAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 115
    :goto_0
    const v6, 0x8b31

    invoke-virtual {p0, v6, v5}, Lcom/android/camera/pip/opengl/Renderer;->loadShader(ILjava/lang/String;)I

    move-result v4

    .line 116
    .local v4, "vertexShader":I
    const v6, 0x8b30

    invoke-virtual {p0, v6, v1}, Lcom/android/camera/pip/opengl/Renderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 118
    .local v3, "program":I
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 119
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 120
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 122
    new-array v2, v9, [I

    .line 123
    .local v2, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v2, v8}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 124
    aget v6, v2, v8

    if-eq v6, v9, :cond_0

    .line 125
    sget-object v6, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Could not link program:"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    sget-object v6, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 128
    const/4 v3, 0x0

    .line 130
    :cond_0
    return v3

    .line 113
    .end local v0    # "fragmentShader":I
    .end local v2    # "linkStatus":[I
    .end local v3    # "program":I
    .end local v4    # "vertexShader":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V
    .locals 6
    .param p1, "tag"    # Lcom/android/camera/debug/Log$Tag;

    .prologue
    .line 160
    iget v3, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    .line 161
    iget v3, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    rem-int/lit16 v3, v3, 0x12c

    if-nez v3, :cond_0

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "currentTime":J
    iget-wide v4, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawStartTime:J

    sub-long v4, v0, v4

    long-to-int v2, v4

    .line 164
    .local v2, "intervals":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Wrapping-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][Preview] Drawing frame, fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in last "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " millisecond."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    iput-wide v0, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawStartTime:J

    .line 168
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/pip/opengl/Renderer;->mDrawFrameCount:I

    .line 170
    .end local v0    # "currentTime":J
    .end local v2    # "intervals":I
    :cond_0
    return-void
.end method

.method public getRendererHeight()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererHeight:I

    return v0
.end method

.method public getRendererWidth()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererWidth:I

    return v0
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 135
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 136
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 138
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 139
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 140
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 141
    sget-object v2, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader(TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    sget-object v2, Lcom/android/camera/pip/opengl/Renderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 144
    const/4 v1, 0x0

    .line 147
    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/pip/opengl/Renderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 152
    return-void
.end method

.method protected setRendererSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererWidth:I

    .line 97
    iput p2, p0, Lcom/android/camera/pip/opengl/Renderer;->mRendererHeight:I

    .line 98
    return-void
.end method
