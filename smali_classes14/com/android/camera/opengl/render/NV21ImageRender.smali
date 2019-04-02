.class public Lcom/android/camera/opengl/render/NV21ImageRender;
.super Lcom/android/camera/opengl/render/BasicRender;
.source "NV21ImageRender.java"


# static fields
.field private static final DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

.field private static DEFAULT_FRAGMENT_SHADER:Ljava/lang/String; = null

.field private static final DEFAULT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;                           \nattribute vec2 inputTextureCoordinate;             \nvarying vec2 textureCoordinate;                    \nvoid main()                                        \n{                                                  \n   gl_Position = position;                         \n   textureCoordinate = inputTextureCoordinate.xy;  \n}                                                  \n"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final TEXTURE_ROTATED_0:[F

.field private static final TEXTURE_ROTATED_0_FLIP_H:[F

.field private static final TEXTURE_ROTATED_180:[F

.field private static final TEXTURE_ROTATED_180_FLIP_H:[F

.field private static final TEXTURE_ROTATED_270:[F

.field private static final TEXTURE_ROTATED_90:[F

.field private static VERTEX:[F


# instance fields
.field private final mAligned64Height:I

.field private final mAligned64Width:I

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

    .line 16
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "NV21ImageRender"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 18
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_0:[F

    .line 23
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_90:[F

    .line 25
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_180:[F

    .line 27
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_270:[F

    .line 30
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_0_FLIP_H:[F

    .line 36
    new-array v0, v2, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_180_FLIP_H:[F

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->VERTEX:[F

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "position"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "inputTextureCoordinate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    .line 65
    const-string v0, "precision mediump float;                                                       \nvarying vec2 textureCoordinate;                                                \nuniform sampler2D yTexture;                                                    \nuniform sampler2D uvTexture;                                                   \nvoid main(void)                                                                \n{                                                                              \n   vec4 y = vec4((texture2D(yTexture, textureCoordinate).r - 16./255.) * 1.164);\n   vec4 u = vec4(texture2D(uvTexture, textureCoordinate).a - 128./255.);       \n   vec4 v = vec4(texture2D(uvTexture, textureCoordinate).r - 128./255.);       \n   y += v * vec4(1.596, -0.813, 0, 0);                                         \n   y += u * vec4(0, -0.392, 2.017, 0);                                         \n   y.a = 1.0;                                                                  \n   gl_FragColor = y;                                                           \n}                                                                              \n"

    sput-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    return-void

    .line 18
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

    .line 23
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

    .line 25
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

    .line 27
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

    .line 30
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

    .line 36
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

    .line 42
    :array_6
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

.method public constructor <init>(IIZI)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isFrontCam"    # Z
    .param p4, "sensorOrientation"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 98
    const-string v0, "attribute vec4 position;                           \nattribute vec2 inputTextureCoordinate;             \nvarying vec2 textureCoordinate;                    \nvoid main()                                        \n{                                                  \n   gl_Position = position;                         \n   textureCoordinate = inputTextureCoordinate.xy;  \n}                                                  \n"

    sget-object v1, Lcom/android/camera/opengl/render/NV21ImageRender;->DEFAULT_FRAGMENT_SHADER:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/opengl/render/NV21ImageRender;->DEFAULT_ATTRIB_LOCATION:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/opengl/render/BasicRender;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 88
    iput v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    .line 89
    iput v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    .line 100
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mPositionHandle:I

    .line 101
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateHandle:I

    .line 102
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    const-string v1, "yTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureHandle:I

    .line 103
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    const-string v1, "uvTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureHandle:I

    .line 104
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 106
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->VERTEX:[F

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertices:[F

    .line 107
    iget-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertices:[F

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

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 108
    iget-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertices:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    iput p1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    .line 111
    iput p2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    .line 112
    int-to-double v0, p1

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    .line 113
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    .line 115
    if-eqz p3, :cond_0

    .line 116
    packed-switch p4, :pswitch_data_0

    .line 121
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_0_FLIP_H:[F

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

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

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 135
    iget-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 137
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v5, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 139
    return-void

    .line 118
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_180_FLIP_H:[F

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

    goto :goto_0

    .line 125
    :cond_0
    packed-switch p4, :pswitch_data_1

    .line 130
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_0:[F

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

    goto :goto_0

    .line 127
    :pswitch_1
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TEXTURE_ROTATED_180:[F

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinate:[F

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    .line 125
    :pswitch_data_1
    .packed-switch 0x10e
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public draw(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "yBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vuBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x1406

    const/4 v8, -0x1

    const/16 v7, 0xde1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 142
    const-string v0, "NV21ImageRender draw start"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 144
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 146
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mPositionHandle:I

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 148
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 149
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateHandle:I

    const/4 v1, 0x2

    iget-object v5, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 151
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 153
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mProgramHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 155
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    const/16 v2, 0x1909

    invoke-static {p1, v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    .line 156
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Width:I

    shr-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mAligned64Height:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x190a

    invoke-static {p2, v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    .line 158
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 159
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 160
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 162
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 163
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    invoke-static {v7, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 164
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 166
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 167
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 168
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 169
    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    if-ltz v0, :cond_0

    .line 172
    new-array v0, v6, [I

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->deleteTextures([I)V

    .line 173
    iput v8, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mYTextureId:I

    .line 176
    :cond_0
    iget v0, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    if-ltz v0, :cond_1

    .line 177
    new-array v0, v6, [I

    iget v1, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    aput v1, v0, v3

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->deleteTextures([I)V

    .line 178
    iput v8, p0, Lcom/android/camera/opengl/render/NV21ImageRender;->mUVTextureId:I

    .line 181
    :cond_1
    sget-object v0, Lcom/android/camera/opengl/render/NV21ImageRender;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {p0, v0}, Lcom/android/camera/opengl/render/NV21ImageRender;->debugFrameRate(Lcom/android/camera/debug/Log$Tag;)V

    .line 182
    const-string v0, "NV21ImageRender draw end"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 183
    return-void
.end method
