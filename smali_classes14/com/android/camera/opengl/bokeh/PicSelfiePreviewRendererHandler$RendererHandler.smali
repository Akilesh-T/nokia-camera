.class Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;
.super Landroid/os/Handler;
.source "PicSelfiePreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererHandler"
.end annotation


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final TEXCOORD_NUM:I

.field private final TEXCOORD_STRIDE:I

.field private final TEXTURE_ROTATION_0:[F

.field private final TEXTURE_ROTATION_180:[F

.field private final TEXTURE_ROTATION_270:[F

.field private final TEXTURE_ROTATION_90:[F

.field private final VERTEX_FULL:[F

.field private final VERTEX_NUM:I

.field private final VERTEX_STRIDE:I

.field private mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private mFrontTexture:I

.field private final mIsFrontCam:Z

.field private mMVPMatrix:[F

.field private mMainPreviewSize:Lcom/android/camera/util/Size;

.field private mMainSTMatrix:[F

.field private final mSensorOrientation:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field public final mTextureCoordinate:[F

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Landroid/os/Looper;ZI)V
    .locals 8
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isFrontCam"    # Z
    .param p4, "sensorOrientation"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v5, 0x2

    const/4 v4, 0x4

    const/4 v6, 0x0

    const/16 v3, 0x8

    .line 162
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    .line 114
    new-array v2, v7, [F

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMVPMatrix:[F

    .line 115
    new-array v2, v7, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainSTMatrix:[F

    .line 124
    iput v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->VERTEX_NUM:I

    .line 125
    iput v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->VERTEX_STRIDE:I

    .line 126
    iput v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXCOORD_NUM:I

    .line 127
    iput v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXCOORD_STRIDE:I

    .line 128
    iput v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->FLOAT_SIZE_BYTES:I

    .line 130
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->VERTEX_FULL:[F

    .line 136
    new-array v2, v3, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_0:[F

    .line 142
    new-array v2, v3, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_90:[F

    .line 148
    new-array v2, v3, [F

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_180:[F

    .line 154
    new-array v2, v3, [F

    fill-array-data v2, :array_5

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_270:[F

    .line 164
    iput-boolean p3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    .line 165
    iput p4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    .line 167
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMVPMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 169
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 170
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->VERTEX_FULL:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 172
    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4050000000000000L    # 64.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v1, v2, 0x40

    .line 173
    .local v1, "mAligned64Width":I
    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v0

    .line 175
    .local v0, "mAligned64Height":I
    iget-boolean v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    if-eqz v2, :cond_0

    .line 176
    iget v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 181
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_270:[F

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTextureCoordinate:[F

    .line 194
    :goto_0
    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 195
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTextureCoordinate:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    return-void

    .line 178
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_180:[F

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTextureCoordinate:[F

    goto :goto_0

    .line 185
    :cond_0
    iget v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    packed-switch v2, :pswitch_data_1

    .line 190
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_0:[F

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTextureCoordinate:[F

    goto :goto_0

    .line 187
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->TEXTURE_ROTATION_180:[F

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {p1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/camera/opengl/GLUtil;->transToCropMatrix([FFF)[F

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTextureCoordinate:[F

    goto :goto_0

    .line 115
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 130
    :array_1
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

    .line 136
    :array_2
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

    .line 142
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

    .line 148
    :array_4
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

    .line 154
    :array_5
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

    .line 176
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    .line 185
    :pswitch_data_1
    .packed-switch 0x10e
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 218
    return-void
.end method

.method private release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$502(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z

    .line 268
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0, v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$202(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z

    .line 269
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/render/YUVImageRender;->release()V

    .line 271
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    invoke-virtual {v0}, Lcom/android/camera/opengl/render/EffectImageRender;->release()V

    .line 275
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_2

    .line 278
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 279
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 283
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 285
    :cond_3
    return-void
.end method

.method private setOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 13
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v12, 0x1908

    const/16 v11, 0xde1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 221
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 242
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 225
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v0, v1, p1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 226
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 227
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0, v9}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$202(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z

    .line 228
    new-instance v0, Lcom/android/camera/opengl/render/YUVImageRender;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    iget v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/opengl/render/YUVImageRender;-><init>(IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

    .line 229
    new-instance v0, Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/opengl/render/EffectImageRender;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 230
    iget-object v8, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v1}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$400(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v2}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mIsFrontCam:Z

    iget v7, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mSensorOrientation:I

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    invoke-static {v8, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$302(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    .line 232
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$300(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->setNeedDefaultBeauty(Z)V

    .line 234
    invoke-static {}, Lcom/android/camera/opengl/util/OpenglUtil;->initTextureID()I

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    .line 235
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .line 237
    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v3

    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v4

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v0, v11

    move v1, v10

    move v2, v12

    move v5, v10

    move v6, v12

    .line 236
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 241
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0, v9}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$502(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Z)Z

    goto/16 :goto_0
.end method

.method private updatePreview(II[Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "format"    # I
    .param p2, "bufferSize"    # I
    .param p3, "byteBuffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mYUVImageRender:Lcom/android/camera/opengl/render/YUVImageRender;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    iget v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/opengl/render/YUVImageRender;->drawToTexture(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 247
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 249
    const-string v0, "updatePreview"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$300(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainSTMatrix:[F

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->processWithRGBATexture(I[F)I

    move-result v1

    .line 251
    .local v1, "mainEffectTextureID":I
    const-string v0, "updatePreview"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 252
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 253
    const-string v0, "updatePreview"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMVPMatrix:[F

    iget-object v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainSTMatrix:[F

    iget-object v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/opengl/render/EffectImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    goto :goto_0

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    iget v3, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mFrontTexture:I

    iget-object v4, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainSTMatrix:[F

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/opengl/render/EffectImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->init()V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->setOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/nio/ByteBuffer;

    check-cast v0, [Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->updatePreview(II[Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 211
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->release()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$500(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviewSize(Lcom/android/camera/util/Size;)V
    .locals 0
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 264
    return-void
.end method
