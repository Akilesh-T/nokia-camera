.class Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;
.super Landroid/os/Handler;
.source "VideoPreviewRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/video/VideoPreviewRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererHandler"
.end annotation


# instance fields
.field private final FLOAT_SIZE_BYTES:I

.field private final PREVIEW_UPDATE_DURATION:I

.field private final TEXCOORD_NUM:I

.field private final TEXCOORD_STRIDE:I

.field private final TEXTURE_ROTATION_0:[F

.field private final TEXTURE_ROTATION_180:[F

.field private final TEXTURE_ROTATION_270:[F

.field private final TEXTURE_ROTATION_90:[F

.field private final VERTEX_FULL:[F

.field private final VERTEX_NUM:I

.field private final VERTEX_STRIDE:I

.field private mBeautyAllow:Z

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private final mEffectEngineLock:Ljava/lang/Object;

.field private mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

.field private mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private mIinited:Z

.field private mIsMainFrameAvailable:Z

.field private mLastUpdateTimestamp:J

.field private mMVPMatrix:[F

.field private mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

.field private mMainPreviewCallbackSurface:Landroid/view/Surface;

.field private mMainPreviewSize:Lcom/android/camera/util/Size;

.field private mMainSTMatrix:[F

.field private mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mMainTextureId:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mRecordController:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordOrientation:I

.field private mRecordStarted:Z

.field private mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mRecordSurfaceReady:Z

.field private mRecordTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mWindowSurfaceReady:Z

.field final synthetic this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/video/VideoPreviewRender;Landroid/content/Context;Landroid/os/Looper;Lcom/android/camera/opengl/effect/EffectMode;ZLcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "effectMode"    # Lcom/android/camera/opengl/effect/EffectMode;
    .param p5, "isBeautyAllow"    # Z
    .param p6, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x20

    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 158
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    .line 159
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIinited:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 92
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->PREVIEW_UPDATE_DURATION:I

    .line 98
    iput v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 106
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    .line 107
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    .line 108
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    .line 111
    iput v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->VERTEX_NUM:I

    .line 112
    iput v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->VERTEX_STRIDE:I

    .line 113
    iput v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXCOORD_NUM:I

    .line 114
    iput v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXCOORD_STRIDE:I

    .line 115
    iput v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->FLOAT_SIZE_BYTES:I

    .line 117
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->VERTEX_FULL:[F

    .line 123
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_0:[F

    .line 129
    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_90:[F

    .line 135
    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_180:[F

    .line 141
    new-array v0, v2, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_270:[F

    .line 153
    sget-object v0, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 155
    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    iput-object p6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 163
    iput-object p4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 164
    if-eqz p5, :cond_0

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->useVendorBeautyForPreview()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    .line 165
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 168
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->VERTEX_FULL:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 171
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_0:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 174
    return-void

    :cond_0
    move v0, v1

    .line 164
    goto :goto_0

    .line 117
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

    .line 123
    :array_1
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

    .line 129
    :array_2
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

    .line 135
    :array_3
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

    .line 141
    :array_4
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
.end method

.method static synthetic access$400(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->convertYUVFromYUV420Image(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    return-object v0
.end method

.method private clearRecordOutputSurface()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    .line 289
    :cond_0
    monitor-exit v1

    .line 290
    return-void

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private convertYUVFromYUV420Image(Landroid/media/Image;)[B
    .locals 25
    .param p1, "img"    # Landroid/media/Image;

    .prologue
    .line 597
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 655
    :cond_0
    :goto_0
    return-object v6

    .line 599
    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v22

    const/16 v23, 0x23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 601
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 602
    .local v5, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v8

    .line 603
    .local v8, "format":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v21

    .line 604
    .local v21, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 605
    .local v10, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v15

    .line 606
    .local v15, "planes":[Landroid/media/Image$Plane;
    mul-int v22, v21, v10

    invoke-static {v8}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v23

    mul-int v22, v22, v23

    div-int/lit8 v22, v22, 0x8

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 607
    .local v6, "data":[B
    const/16 v22, 0x0

    aget-object v22, v15, v22

    invoke-virtual/range {v22 .. v22}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 608
    .local v17, "rowData":[B
    const/4 v3, 0x0

    .line 609
    .local v3, "channelOffset":I
    const/4 v13, 0x1

    .line 610
    .local v13, "outputStride":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    array-length v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v11, v0, :cond_0

    .line 611
    packed-switch v11, :pswitch_data_0

    .line 625
    :goto_2
    aget-object v22, v15, v11

    invoke-virtual/range {v22 .. v22}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 626
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    aget-object v22, v15, v11

    invoke-virtual/range {v22 .. v22}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v18

    .line 627
    .local v18, "rowStride":I
    aget-object v22, v15, v11

    invoke-virtual/range {v22 .. v22}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v14

    .line 628
    .local v14, "pixelStride":I
    if-nez v11, :cond_5

    const/16 v19, 0x0

    .line 629
    .local v19, "shift":I
    :goto_3
    shr-int v20, v21, v19

    .line 630
    .local v20, "w":I
    shr-int v9, v10, v19

    .line 631
    .local v9, "h":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    shr-int v22, v22, v19

    mul-int v22, v22, v18

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    shr-int v23, v23, v19

    mul-int v23, v23, v14

    add-int v22, v22, v23

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 632
    const/16 v16, 0x0

    .local v16, "row":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v9, :cond_7

    .line 634
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_6

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_6

    .line 635
    move/from16 v12, v20

    .line 636
    .local v12, "length":I
    invoke-virtual {v2, v6, v3, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 637
    add-int/2addr v3, v12

    .line 646
    :cond_3
    add-int/lit8 v22, v9, -0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 647
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v22

    add-int v22, v22, v18

    sub-int v22, v22, v12

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 632
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 613
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "h":I
    .end local v12    # "length":I
    .end local v14    # "pixelStride":I
    .end local v16    # "row":I
    .end local v18    # "rowStride":I
    .end local v19    # "shift":I
    .end local v20    # "w":I
    :pswitch_0
    const/4 v3, 0x0

    .line 614
    const/4 v13, 0x1

    .line 615
    goto :goto_2

    .line 617
    :pswitch_1
    mul-int v22, v21, v10

    add-int/lit8 v3, v22, 0x1

    .line 618
    const/4 v13, 0x2

    .line 619
    goto :goto_2

    .line 621
    :pswitch_2
    mul-int v3, v21, v10

    .line 622
    const/4 v13, 0x2

    goto :goto_2

    .line 628
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v14    # "pixelStride":I
    .restart local v18    # "rowStride":I
    :cond_5
    const/16 v19, 0x1

    goto :goto_3

    .line 639
    .restart local v9    # "h":I
    .restart local v16    # "row":I
    .restart local v19    # "shift":I
    .restart local v20    # "w":I
    :cond_6
    add-int/lit8 v22, v20, -0x1

    mul-int v22, v22, v14

    add-int/lit8 v12, v22, 0x1

    .line 640
    .restart local v12    # "length":I
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 641
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_5
    move/from16 v0, v20

    if-ge v4, v0, :cond_3

    .line 642
    mul-int v22, v4, v14

    aget-byte v22, v17, v22

    aput-byte v22, v6, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    add-int/2addr v3, v13

    .line 641
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 610
    .end local v4    # "col":I
    .end local v12    # "length":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 652
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "channelOffset":I
    .end local v5    # "crop":Landroid/graphics/Rect;
    .end local v6    # "data":[B
    .end local v8    # "format":I
    .end local v9    # "h":I
    .end local v10    # "height":I
    .end local v11    # "i":I
    .end local v13    # "outputStride":I
    .end local v14    # "pixelStride":I
    .end local v15    # "planes":[Landroid/media/Image$Plane;
    .end local v16    # "row":I
    .end local v17    # "rowData":[B
    .end local v18    # "rowStride":I
    .end local v19    # "shift":I
    .end local v20    # "w":I
    .end local v21    # "width":I
    :catch_0
    move-exception v7

    .line 653
    .local v7, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "convertYUVFromYUV420Image error = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 655
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 6
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "threadName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 451
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 498
    :goto_0
    return-object v2

    .line 453
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 454
    .local v0, "isClosed":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p4}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p4}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 455
    .local v1, "previewCallbackImageReader":Landroid/media/ImageReader;
    new-instance v2, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;-><init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/ImageReader;)V

    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 466
    new-instance v2, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$3;-><init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/camera/opengl/ImageSource;)V

    new-instance v3, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v3}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const/16 v4, 0xa

    .line 497
    invoke-virtual {v3, p1, p3, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v3

    .line 466
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 498
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    .line 207
    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v5

    .line 208
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 209
    new-instance v4, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 210
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 211
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v3, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v3, v4, v1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    .line 212
    .local v3, "warmUpWindowSurface":Lcom/android/camera/pip/opengl/WindowSurface;
    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 213
    const-string v4, "warmUpWindowSurface makeCurrent"

    invoke-static {v4}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x1

    .line 216
    .local v0, "REQUIRE_TEXTURE_NUM":I
    const/4 v4, 0x1

    new-array v2, v4, [I

    .line 217
    .local v2, "textures":[I
    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v2, v6}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 219
    const/4 v4, 0x0

    aget v4, v2, v4

    iput v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    .line 220
    iget v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    invoke-static {v4}, Lcom/android/camera/opengl/GLUtil;->bindPreviewTexure(I)V

    .line 221
    const-string v4, "glBindTexture mMainTextureId"

    invoke-static {v4}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 224
    const-string v4, "warmUpWindowSurface release"

    invoke-static {v4}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIinited:Z

    .line 226
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 228
    .end local v0    # "REQUIRE_TEXTURE_NUM":I
    .end local v1    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v2    # "textures":[I
    .end local v3    # "warmUpWindowSurface":Lcom/android/camera/pip/opengl/WindowSurface;
    :cond_0
    monitor-exit v5

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private initEffectEngine()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 376
    iget-object v9, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    monitor-enter v9

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 382
    :cond_0
    invoke-static {}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeautyAllow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/android/camera/opengl/video/VideoPreviewRender$2;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 417
    :cond_1
    :goto_0
    monitor-exit v9

    .line 418
    return-void

    .line 386
    :pswitch_0
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 387
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v8

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v8, v10, :cond_2

    :goto_1
    iget-boolean v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 388
    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v6, v7

    .line 387
    goto :goto_1

    .line 391
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_1

    .line 392
    new-instance v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 393
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v8

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v8, v10, :cond_3

    :goto_2
    iget-object v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 394
    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto :goto_0

    :cond_3
    move v6, v7

    .line 393
    goto :goto_2

    .line 398
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_1

    .line 399
    new-instance v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 400
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v8

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v8, v10, :cond_4

    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 401
    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_4
    move v6, v7

    .line 400
    goto :goto_3

    .line 408
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->isBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 410
    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v8, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v8

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v8, v10, :cond_5

    :goto_4
    iget-object v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 411
    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_5
    move v6, v7

    .line 410
    goto :goto_4

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isBeautyMode()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mBeautyAllow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$300(Lcom/android/camera/opengl/video/VideoPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEffectModeChanged(Lcom/android/camera/opengl/effect/EffectMode;)V
    .locals 2
    .param p1, "effectMode"    # Lcom/android/camera/opengl/effect/EffectMode;

    .prologue
    .line 367
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 370
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->initEffectEngine()V

    .line 372
    :cond_0
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onFrameAvalable(Lcom/android/camera/opengl/ImageSource;)V
    .locals 15
    .param p1, "imageSource"    # Lcom/android/camera/opengl/ImageSource;

    .prologue
    .line 293
    iget-object v14, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v14

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    sget-object v0, Lcom/android/camera/opengl/video/VideoPreviewRender$2;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 308
    .local v12, "current":J
    iget-wide v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    sub-long v2, v12, v2

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 309
    monitor-exit v14

    .line 364
    .end local v12    # "current":J
    :goto_1
    return-void

    .line 297
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 299
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 311
    .restart local v12    # "current":J
    :cond_1
    :try_start_1
    iput-wide v12, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 313
    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    iget v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/opengl/effect/EffectEngine;->process(I[F)I

    move-result v1

    .line 318
    .local v1, "mainEffectTextureID":I
    :goto_2
    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v0, :cond_2

    .line 319
    const/4 v0, -0x1

    if-eq v1, v0, :cond_7

    .line 320
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 326
    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    invoke-interface {v0}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/EglCore;->getGlVersion()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_8

    iget v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    if-nez v0, :cond_8

    .line 328
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0, v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrentReadFrom(Lcom/android/camera/pip/opengl/EglSurfaceBase;)V

    .line 329
    const-string v0, "before glBlitFramebuffer"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 331
    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 332
    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v8

    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v9

    const/16 v10, 0x4000

    const/16 v11, 0x2600

    .line 330
    invoke-static/range {v2 .. v11}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 335
    const-string v0, "after glBlitFramebuffer"

    invoke-static {v0}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 340
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 360
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 363
    .end local v1    # "mainEffectTextureID":I
    .end local v12    # "current":J
    :cond_5
    monitor-exit v14

    goto/16 :goto_1

    .line 316
    .restart local v12    # "current":J
    :cond_6
    const/4 v1, -0x1

    goto/16 :goto_2

    .line 322
    .restart local v1    # "mainEffectTextureID":I
    :cond_7
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    iget v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    iget-object v6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto/16 :goto_3

    .line 342
    :cond_8
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 343
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v4}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 344
    iget-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v0, :cond_9

    .line 345
    const/4 v0, -0x1

    if-eq v1, v0, :cond_a

    .line 346
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 352
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 353
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 355
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 356
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v4}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v4

    invoke-static {v0, v2, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_4

    .line 349
    :cond_a
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    iget v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    iget-object v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMVPMatrix:[F

    iget-object v5, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSTMatrix:[F

    iget-object v6, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v7, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release()V
    .locals 6

    .prologue
    .line 532
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$200()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Render"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 533
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 534
    :try_start_0
    const-string v1, "sync mRelease done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 535
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_8

    .line 536
    const-string v1, "not stop before, stop it"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 537
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIinited:Z

    .line 538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 539
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 540
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 541
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 542
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 543
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    .line 544
    const-string v1, "reset flag done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 545
    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 546
    :try_start_1
    const-string v1, "sync mEffectEngineLock done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 549
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 550
    const-string v1, "release mMainEffectEngine done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 552
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    invoke-virtual {v1}, Lcom/android/camera/opengl/render/TextureImageRender;->release()V

    .line 555
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    .line 556
    const-string v1, "release mTextureImageRender done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    if-eqz v1, :cond_2

    .line 559
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    invoke-virtual {v1}, Lcom/android/camera/opengl/render/EffectImageRender;->release()V

    .line 560
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 561
    const-string v1, "release mEffectImageRender done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    .line 564
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 565
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 566
    const-string v1, "release mMainSurfaceTexture done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 569
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 570
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 571
    const-string v1, "release mMainPreviewCallbackSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 573
    :cond_4
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v1, :cond_5

    .line 574
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 575
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 576
    const-string v1, "release mWindowSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 578
    :cond_5
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_6

    .line 579
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 580
    const-string v1, "clear mPreviewSurfaceTexture ref"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 582
    :cond_6
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v1, :cond_7

    .line 583
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 584
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 585
    const-string v1, "release mRecordSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 587
    :cond_7
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v1, :cond_8

    .line 588
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 589
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 590
    const-string v1, "release mEglCore done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 593
    :cond_8
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 594
    return-void

    .line 552
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 593
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 248
    :goto_0
    return-void

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 236
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 238
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v0, v2, p1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 239
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 241
    new-instance v0, Lcom/android/camera/opengl/render/TextureImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/opengl/render/TextureImageRender;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    .line 242
    new-instance v0, Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$000(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/video/VideoPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/video/VideoPreviewRender;->access$100(Lcom/android/camera/opengl/video/VideoPreviewRender;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/opengl/render/EffectImageRender;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 244
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->initEffectEngine()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 247
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRecordController(Lcom/android/camera/async/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    .line 529
    return-void
.end method

.method private setRecordOutputSurface(Landroid/view/Surface;I)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recordOrientation"    # I

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 276
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v1, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    const/4 v4, 0x0

    invoke-direct {v1, v3, p1, v4}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 255
    iput p2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 257
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_0:[F

    .line 258
    .local v0, "record_texCoord":[F
    iget v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 271
    :goto_1
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 273
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 275
    .end local v0    # "record_texCoord":[F
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 260
    .restart local v0    # "record_texCoord":[F
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_90:[F

    .line 261
    goto :goto_1

    .line 263
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_180:[F

    .line 264
    goto :goto_1

    .line 266
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->TEXTURE_ROTATION_270:[F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    goto :goto_1

    .line 258
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 4
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 425
    if-nez p1, :cond_0

    .line 441
    :goto_0
    return-object v0

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    .line 429
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 430
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainTextureId:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 431
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 432
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$1;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$1;-><init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 439
    :cond_1
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    monitor-exit v1

    goto :goto_0

    .line 443
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 441
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMainPreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 502
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->isBeautyMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    :goto_0
    return-object v0

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 504
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 505
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 506
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const-string v2, "Main Preview Callback Handler"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    monitor-exit v1

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 510
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 180
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->init()V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 186
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->setRecordOutputSurface(Landroid/view/Surface;I)V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->clearRecordOutputSurface()V

    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/Observable;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->setRecordController(Lcom/android/camera/async/Observable;)V

    goto :goto_0

    .line 195
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/opengl/ImageSource;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->onFrameAvalable(Lcom/android/camera/opengl/ImageSource;)V

    goto :goto_0

    .line 198
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/opengl/effect/EffectMode;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->onEffectModeChanged(Lcom/android/camera/opengl/effect/EffectMode;)V

    goto :goto_0

    .line 201
    :pswitch_7
    invoke-direct {p0}, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->release()V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public startRecord()V
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 521
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 525
    return-void
.end method
