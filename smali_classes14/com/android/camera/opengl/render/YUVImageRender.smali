.class public Lcom/android/camera/opengl/render/YUVImageRender;
.super Lcom/android/camera/opengl/render/BasicRender;
.source "YUVImageRender.java"


# static fields
.field private static final DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

.field private static DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = null

.field private static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec2 position;                           \nattribute vec2 inputTextureCoordinate;             \nvarying vec2 textureCoordinate;                    \nvoid main()                                        \n{                                                  \n   gl_Position = vec4(position, 1, 1);                \n   textureCoordinate = inputTextureCoordinate.xy;  \n}                                                  \n"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TEXTURE_ROTATED_0:[F

.field private static final TEXTURE_ROTATED_0_FLIP_H:[F

.field private static final TEXTURE_ROTATED_180:[F

.field private static final TEXTURE_ROTATED_180_FLIP_H:[F

.field private static final TEXTURE_ROTATED_270:[F

.field private static final TEXTURE_ROTATED_90:[F

.field private static VERTEX:[F


# instance fields
.field private final TEXTURE:[F

.field private final mAligned64Height:I

.field private final mAligned64Width:I

.field protected mFrameBuffers:[I

.field private final mHeight:I

.field private mPositionHandle:I

.field public final mTextureCoordinate:[F

.field private mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinateHandle:I

.field private mUVTextureHandle:I

.field private mUVTextureId:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field public final mVertices:[F

.field private final mWidth:I

.field private mYTextureHandle:I

.field private mYTextureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 14
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "YUVImageRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 16
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_0:[F

    .line 21
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_90:[F

    .line 23
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_180:[F

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_270:[F

    .line 28
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_0_FLIP_H:[F

    .line 34
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE_ROTATED_180_FLIP_H:[F

    .line 40
    new-array v0, v2, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->VERTEX:[F

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "inputTextureCoordinate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    .line 71
    const-string v0, "precision mediump float;                                                       \nvarying vec2 textureCoordinate;                                                \nuniform sampler2D yTexture;                                                    \nuniform sampler2D uvTexture;                                                   \nvoid main(void)                                                                \n{                                                                              \n   vec4 y = vec4((texture2D(yTexture, textureCoordinate).r - 16./255.) * 1.164);\n   vec4 u = vec4(texture2D(uvTexture, textureCoordinate).a - 128./255.);       \n   vec4 v = vec4(texture2D(uvTexture, textureCoordinate).r - 128./255.);       \n   y += v * vec4(1.596, -0.813, 0, 0);                                         \n   y += u * vec4(0, -0.392, 2.017, 0);                                         \n   y.a = 1.0;                                                                  \n   gl_FragColor = y;                                                           \n}                                                                              \n"

    sput-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    return-void

    .line 16
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

    .line 21
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

    .line 23
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

    .line 25
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

    .line 28
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    .line 34
    :array_5
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

    .line 40
    :array_6
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
.end method

.method public constructor <init>(IIZI)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isFrontCam"    # Z
    .param p4, "sensorOrientation"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 103
    const-string v0, "attribute vec2 position;                           \nattribute vec2 inputTextureCoordinate;             \nvarying vec2 textureCoordinate;                    \nvoid main()                                        \n{                                                  \n   gl_Position = vec4(position, 1, 1);                \n   textureCoordinate = inputTextureCoordinate.xy;  \n}                                                  \n"

    sget-object v1, Lcom/android/camera/opengl/render/YUVImageRender;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/opengl/render/YUVImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/opengl/render/BasicRender;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 45
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE:[F

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mFrameBuffers:[I

    .line 94
    iput v3, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureId:I

    .line 95
    iput v3, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureId:I

    .line 105
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mFrameBuffers:[I

    .line 106
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mFrameBuffers:[I

    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 108
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mPositionHandle:I

    .line 109
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateHandle:I

    .line 110
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    const-string v1, "yTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureHandle:I

    .line 111
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    const-string v1, "uvTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureHandle:I

    .line 112
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 114
    sget-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->VERTEX:[F

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertices:[F

    .line 115
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertices:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 116
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    iput p1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mWidth:I

    .line 119
    iput p2, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mHeight:I

    .line 120
    int-to-double v0, p1

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Width:I

    .line 121
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mHeight:I

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Height:I

    .line 123
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->TEXTURE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinate:[F

    .line 124
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinate:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 125
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinate:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 127
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mWidth:I

    iget v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mHeight:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 128
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 129
    return-void

    .line 45
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
.end method

.method private static checkFramebufferStatus()V
    .locals 5

    .prologue
    .line 177
    const v2, 0x8d40

    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v1

    .line 178
    .local v1, "status":I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 179
    const-string v0, ""

    .line 180
    .local v0, "msg":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 194
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :pswitch_1
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT"

    .line 183
    goto :goto_0

    .line 185
    :pswitch_2
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    .line 186
    goto :goto_0

    .line 188
    :pswitch_3
    const-string v0, "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT"

    .line 189
    goto :goto_0

    .line 191
    :pswitch_4
    const-string v0, "GL_FRAMEBUFFER_UNSUPPORTED"

    goto :goto_0

    .line 196
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static loadTexture(Ljava/nio/ByteBuffer;IIII)I
    .locals 10
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "type"    # I
    .param p4, "usedTexId"    # I

    .prologue
    const/4 v5, 0x1

    const v4, 0x47012f00    # 33071.0f

    const v3, 0x46180400    # 9729.0f

    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 200
    const/4 v2, -0x1

    if-ne p4, v2, :cond_0

    .line 201
    new-array v9, v5, [I

    .line 202
    .local v9, "textures":[I
    invoke-static {v5, v9, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 203
    aget p4, v9, v1

    .line 204
    aget v2, v9, v1

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    const/16 v2, 0x2801

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 206
    const/16 v2, 0x2800

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 207
    const/16 v2, 0x2802

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 208
    const/16 v2, 0x2803

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 209
    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v2, p3

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, p3

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 213
    .end local v9    # "textures":[I
    :cond_0
    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 214
    const/16 v7, 0x1401

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p0

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 216
    return p4
.end method


# virtual methods
.method public drawToTexture(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 9
    .param p1, "yBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vuBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "textureId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v8, -0x1

    const v7, 0x8d40

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 132
    const-string v0, "YUVImageRender draw to texture begin"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mFrameBuffers:[I

    aget v0, v0, v3

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 134
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mWidth:I

    iget v2, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mHeight:I

    invoke-static {v3, v3, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 135
    const v0, 0x8ce0

    const/16 v2, 0xde1

    invoke-static {v7, v0, v2, p3, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 138
    invoke-static {}, Lcom/android/camera/opengl/render/YUVImageRender;->checkFramebufferStatus()V

    .line 140
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 141
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 142
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 143
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 144
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 146
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mPositionHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 148
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateHandle:I

    const/16 v2, 0x1406

    iget-object v5, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 150
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 151
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Width:I

    iget v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Height:I

    const/16 v2, 0x1909

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureId:I

    .line 152
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 153
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Width:I

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mAligned64Height:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x190a

    invoke-static {p2, v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureId:I

    .line 155
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 157
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 158
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 159
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 160
    const/16 v0, 0xde1

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 161
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureId:I

    if-ltz v0, :cond_0

    .line 162
    new-array v0, v6, [I

    iget v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureId:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->deleteTextures([I)V

    .line 163
    iput v8, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mYTextureId:I

    .line 166
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureId:I

    if-ltz v0, :cond_1

    .line 167
    new-array v0, v6, [I

    iget v1, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureId:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->deleteTextures([I)V

    .line 168
    iput v8, p0, Lcom/android/camera/opengl/render/YUVImageRender;->mUVTextureId:I

    .line 170
    :cond_1
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 171
    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 172
    sget-object v0, Lcom/android/camera/opengl/render/YUVImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/render/YUVImageRender;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 173
    const-string v0, "YUVImageRender draw end"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/camera/opengl/render/BasicRender;->release()V

    .line 222
    return-void
.end method
