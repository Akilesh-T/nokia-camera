.class Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;
.super Landroid/os/Handler;
.source "DualSightPreviewRender.java"

# interfaces
.implements Lcom/android/camera/opengl/image/ImageGeneratorProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererHandler"
.end annotation


# instance fields
.field private final CONTROL_LINE_HANDLE_WIDTH:F

.field private final CONTROL_LINE_THICKNESS:F

.field private final CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

.field private CROP_RATIO_MAIN:F

.field private final FLOAT_SIZE_BYTES:I

.field private final LINT_OFFSET:F

.field private final MARGIN_BOTTOM_RATIO:F

.field private final MARGIN_LEFT_RATIO:F

.field private final MARGIN_RIGHT_RATIO:F

.field private final MARGIN_TOP_RATIO:F

.field private final PREVIEW_UPDATE_DURATION:I

.field private RECORD_VERTEX_MAIN:[F

.field private RECORD_VERTEX_SLAVE:[F

.field private final SUB_SIZE_RATIO:F

.field private final TEXCOORD_NUM:I

.field private final TEXCOORD_STRIDE:I

.field private final TEXTURE_FULL:[F

.field private TEXTURE_MAIN:[F

.field private TEXTURE_SLAVE:[F

.field private VERTEX_CONTROL_LINE:[F

.field private final VERTEX_FULL_0:[F

.field private final VERTEX_FULL_180:[F

.field private final VERTEX_FULL_270:[F

.field private final VERTEX_FULL_90:[F

.field private final VERTEX_HALF_DOWN_0:[F

.field private final VERTEX_HALF_DOWN_180:[F

.field private final VERTEX_HALF_DOWN_270:[F

.field private final VERTEX_HALF_DOWN_90:[F

.field private final VERTEX_HALF_UP_0:[F

.field private final VERTEX_HALF_UP_180:[F

.field private final VERTEX_HALF_UP_270:[F

.field private final VERTEX_HALF_UP_90:[F

.field private VERTEX_MAIN:[F

.field private final VERTEX_NUM:I

.field private VERTEX_SLAVE:[F

.field private final VERTEX_STRIDE:I

.field private mBeautyAllow:Z

.field private final mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

.field private mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field private final mEffectEngineLock:Ljava/lang/Object;

.field private mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

.field private mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

.field private mEglCore:Lcom/android/camera/pip/opengl/EglCore;

.field private mIinited:Z

.field private mIsLineLimited:Z

.field private mIsMainFrameAvailable:Z

.field private mIsSlaveFrameAvailable:Z

.field private mLastUpdateTimestamp:J

.field private mLineWindowRect:Landroid/graphics/RectF;

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

.field private mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

.field private mSlavePreviewCallbackSurface:Landroid/view/Surface;

.field private mSlavePreviewSize:Lcom/android/camera/util/Size;

.field private mSlaveSTMatrix:[F

.field private mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSlaveTextureId:I

.field private mSubWindowRect:Landroid/graphics/RectF;

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

.field private mWindowSurfaceReady:Z

.field final synthetic this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/content/Context;Landroid/os/Looper;Lcom/android/camera/opengl/dualsight/DualSightMode;Lcom/android/camera/opengl/effect/EffectMode;ZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;)V
    .locals 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;
    .param p5, "effectMode"    # Lcom/android/camera/opengl/effect/EffectMode;
    .param p6, "isBeautyAllow"    # Z
    .param p7, "cameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;
    .param p8, "slaveCameraCharacteristics"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 300
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    .line 301
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIinited:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 149
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->PREVIEW_UPDATE_DURATION:I

    .line 156
    iput v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 169
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    .line 170
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    .line 171
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    .line 172
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    .line 173
    new-array v1, v6, [F

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    .line 175
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    .line 178
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsLineLimited:Z

    .line 180
    iput v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_NUM:I

    .line 181
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_STRIDE:I

    .line 182
    iput v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXCOORD_NUM:I

    .line 183
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXCOORD_STRIDE:I

    .line 184
    iput v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->FLOAT_SIZE_BYTES:I

    .line 197
    const v1, 0x3e0f5c29    # 0.14f

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->LINT_OFFSET:F

    .line 199
    new-array v1, v2, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    .line 205
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    .line 211
    new-array v1, v2, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    .line 217
    new-array v1, v2, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    .line 223
    new-array v1, v2, [F

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    .line 229
    new-array v1, v2, [F

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_0:[F

    .line 235
    new-array v1, v2, [F

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_90:[F

    .line 241
    new-array v1, v2, [F

    fill-array-data v1, :array_7

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_180:[F

    .line 247
    new-array v1, v2, [F

    fill-array-data v1, :array_8

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_270:[F

    .line 253
    new-array v1, v2, [F

    fill-array-data v1, :array_9

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_0:[F

    .line 259
    new-array v1, v2, [F

    fill-array-data v1, :array_a

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_90:[F

    .line 265
    new-array v1, v2, [F

    fill-array-data v1, :array_b

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_180:[F

    .line 271
    new-array v1, v2, [F

    fill-array-data v1, :array_c

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_270:[F

    .line 277
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 278
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 279
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 280
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 281
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_CONTROL_LINE:[F

    .line 284
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 285
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    .line 293
    sget-object v1, Lcom/android/camera/opengl/effect/EffectMode;->NONE:Lcom/android/camera/opengl/effect/EffectMode;

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 296
    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    .line 297
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    .line 302
    iput-object p7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 303
    iput-object p8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 305
    iput-object p4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 306
    iput-object p5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 307
    iput-boolean p6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    .line 308
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 311
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 313
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 315
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 316
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f090208

    invoke-static {v0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_TOP_RATIO:F

    .line 317
    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x7f090206

    invoke-static {v0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_BOTTOM_RATIO:F

    .line 318
    const/high16 v1, -0x40800000    # -1.0f

    const v2, 0x7f090207

    invoke-static {v0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_LEFT_RATIO:F

    .line 319
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x7f090207

    invoke-static {v0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_RIGHT_RATIO:F

    .line 320
    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x7f090205

    invoke-static {v0, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->SUB_SIZE_RATIO:F

    .line 321
    const v1, 0x7f090203

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$000(Landroid/content/res/Resources;I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    .line 322
    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    .line 324
    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_HANDLE_WIDTH:F

    .line 325
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->initWindowRect()V

    .line 326
    return-void

    .line 199
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

    .line 205
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 211
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 217
    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 223
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

    .line 229
    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 235
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
    .end array-data

    .line 241
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
    .end array-data

    .line 247
    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 253
    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 259
    :array_a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    .line 265
    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 271
    :array_c
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic access$1200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;Landroid/media/Image;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;
    .param p1, "x1"    # Landroid/media/Image;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->convertYUVFromYUV420Image(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)Lcom/android/camera/opengl/effect/EffectEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    return-object v0
.end method

.method private clearRecordOutputSurface()V
    .locals 2

    .prologue
    .line 467
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    .line 477
    :cond_0
    monitor-exit v1

    .line 478
    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private convertYUVFromYUV420Image(Landroid/media/Image;)[B
    .locals 23
    .param p1, "img"    # Landroid/media/Image;

    .prologue
    .line 1377
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 1431
    :cond_0
    :goto_0
    return-object v6

    .line 1379
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v21

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 1381
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1382
    .local v5, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v7

    .line 1383
    .local v7, "format":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 1384
    .local v20, "width":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 1385
    .local v9, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    .line 1386
    .local v14, "planes":[Landroid/media/Image$Plane;
    mul-int v21, v20, v9

    invoke-static {v7}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v22

    mul-int v21, v21, v22

    div-int/lit8 v21, v21, 0x8

    move/from16 v0, v21

    new-array v6, v0, [B

    .line 1387
    .local v6, "data":[B
    const/16 v21, 0x0

    aget-object v21, v14, v21

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 1388
    .local v16, "rowData":[B
    const/4 v3, 0x0

    .line 1389
    .local v3, "channelOffset":I
    const/4 v12, 0x1

    .line 1390
    .local v12, "outputStride":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_0

    .line 1391
    packed-switch v10, :pswitch_data_0

    .line 1405
    :goto_2
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1406
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    .line 1407
    .local v17, "rowStride":I
    aget-object v21, v14, v10

    invoke-virtual/range {v21 .. v21}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    .line 1408
    .local v13, "pixelStride":I
    if-nez v10, :cond_5

    const/16 v18, 0x0

    .line 1409
    .local v18, "shift":I
    :goto_3
    shr-int v19, v20, v18

    .line 1410
    .local v19, "w":I
    shr-int v8, v9, v18

    .line 1411
    .local v8, "h":I
    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    shr-int v21, v21, v18

    mul-int v21, v21, v17

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    shr-int v22, v22, v18

    mul-int v22, v22, v13

    add-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1412
    const/4 v15, 0x0

    .local v15, "row":I
    :goto_4
    if-ge v15, v8, :cond_7

    .line 1414
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_6

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v12, v0, :cond_6

    .line 1415
    move/from16 v11, v19

    .line 1416
    .local v11, "length":I
    invoke-virtual {v2, v6, v3, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1417
    add-int/2addr v3, v11

    .line 1426
    :cond_3
    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v21

    if-ge v15, v0, :cond_4

    .line 1427
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v21

    add-int v21, v21, v17

    sub-int v21, v21, v11

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1412
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1393
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "h":I
    .end local v11    # "length":I
    .end local v13    # "pixelStride":I
    .end local v15    # "row":I
    .end local v17    # "rowStride":I
    .end local v18    # "shift":I
    .end local v19    # "w":I
    :pswitch_0
    const/4 v3, 0x0

    .line 1394
    const/4 v12, 0x1

    .line 1395
    goto :goto_2

    .line 1397
    :pswitch_1
    mul-int v21, v20, v9

    add-int/lit8 v3, v21, 0x1

    .line 1398
    const/4 v12, 0x2

    .line 1399
    goto :goto_2

    .line 1401
    :pswitch_2
    mul-int v3, v20, v9

    .line 1402
    const/4 v12, 0x2

    goto :goto_2

    .line 1408
    .restart local v2    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "pixelStride":I
    .restart local v17    # "rowStride":I
    :cond_5
    const/16 v18, 0x1

    goto :goto_3

    .line 1419
    .restart local v8    # "h":I
    .restart local v15    # "row":I
    .restart local v18    # "shift":I
    .restart local v19    # "w":I
    :cond_6
    add-int/lit8 v21, v19, -0x1

    mul-int v21, v21, v13

    add-int/lit8 v11, v21, 0x1

    .line 1420
    .restart local v11    # "length":I
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1421
    const/4 v4, 0x0

    .local v4, "col":I
    :goto_5
    move/from16 v0, v19

    if-ge v4, v0, :cond_3

    .line 1422
    mul-int v21, v4, v13

    aget-byte v21, v16, v21

    aput-byte v21, v6, v3

    .line 1423
    add-int/2addr v3, v12

    .line 1421
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1390
    .end local v4    # "col":I
    .end local v11    # "length":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1391
    nop

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
    .line 1180
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 1233
    :goto_0
    return-object v2

    .line 1182
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1183
    .local v0, "isClosed":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {p4}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    invoke-virtual {p4}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    const/16 v4, 0x23

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    .line 1184
    .local v1, "previewCallbackImageReader":Landroid/media/ImageReader;
    new-instance v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$3;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/ImageReader;)V

    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 1196
    new-instance v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$4;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/camera/opengl/ImageSource;)V

    new-instance v3, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v3}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    const/16 v4, 0xa

    .line 1232
    invoke-virtual {v3, p1, p3, v4}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v3

    .line 1196
    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 1233
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    .line 403
    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 404
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 405
    new-instance v3, Lcom/android/camera/pip/opengl/EglCore;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lcom/android/camera/pip/opengl/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 406
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 407
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v2, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v2, v3, v0}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    .line 408
    .local v2, "warmUpWindowSurface":Lcom/android/camera/pip/opengl/WindowSurface;
    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 409
    const-string v3, "warmUpWindowSurface makeCurrent"

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 411
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 412
    .local v1, "textures":[I
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 414
    const/4 v3, 0x0

    aget v3, v1, v3

    iput v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    .line 415
    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->bindPreviewTexure(I)V

    .line 416
    const-string v3, "glBindTexture mMainTextureId"

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 418
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    .line 419
    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->bindPreviewTexure(I)V

    .line 420
    const-string v3, "glBindTexture mSlaveTextureId"

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 423
    const-string v3, "warmUpWindowSurface release"

    invoke-static {v3}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 425
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIinited:Z

    .line 426
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 428
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    .end local v1    # "textures":[I
    .end local v2    # "warmUpWindowSurface":Lcom/android/camera/pip/opengl/WindowSurface;
    :cond_0
    monitor-exit v4

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private initEffectEngine()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 965
    iget-object v11, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    monitor-enter v11

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 976
    :cond_1
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEffectMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDualSightMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 978
    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$900()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBeautyAllow : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 979
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1083
    :cond_2
    :goto_0
    monitor-exit v11

    .line 1084
    return-void

    .line 981
    :pswitch_0
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 991
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_9

    .line 992
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_7

    move v6, v9

    :goto_1
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 993
    new-instance v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_8

    move v4, v9

    :goto_2
    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto :goto_0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 983
    :pswitch_1
    :try_start_1
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_3

    move v6, v9

    :goto_3
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 984
    new-instance v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_4

    move v4, v9

    :goto_4
    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_3
    move v6, v10

    .line 983
    goto :goto_3

    :cond_4
    move v4, v10

    .line 984
    goto :goto_4

    .line 987
    :pswitch_2
    new-instance v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_5

    move v4, v9

    :goto_5
    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 988
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_6

    move v6, v9

    :goto_6
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_5
    move v4, v10

    .line 987
    goto :goto_5

    :cond_6
    move v6, v10

    .line 988
    goto :goto_6

    :cond_7
    move v6, v10

    .line 992
    goto/16 :goto_1

    :cond_8
    move v4, v10

    .line 993
    goto/16 :goto_2

    .line 995
    :cond_9
    new-instance v0, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_a

    move v4, v9

    :goto_7
    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 996
    new-instance v0, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_b

    move v6, v9

    :goto_8
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/sticker/StickerEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_a
    move v4, v10

    .line 995
    goto :goto_7

    :cond_b
    move v6, v10

    .line 996
    goto :goto_8

    .line 1002
    :pswitch_3
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 1014
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_f

    .line 1015
    new-instance v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_e

    move v6, v9

    :goto_9
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    .line 1004
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1005
    new-instance v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_c

    move v6, v9

    :goto_a
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_c
    move v6, v10

    goto :goto_a

    .line 1009
    :pswitch_5
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1010
    new-instance v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_d

    move v6, v9

    :goto_b
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_d
    move v6, v10

    goto :goto_b

    :cond_e
    move v6, v10

    .line 1015
    goto/16 :goto_9

    .line 1017
    :cond_f
    new-instance v0, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_10

    move v6, v9

    :goto_c
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/animoji/AnimojiEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_10
    move v6, v10

    goto :goto_c

    .line 1023
    :pswitch_6
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 1035
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_14

    .line 1036
    new-instance v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_13

    move v6, v9

    :goto_d
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    .line 1025
    :pswitch_7
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1026
    new-instance v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_11

    move v6, v9

    :goto_e
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_11
    move v6, v10

    goto :goto_e

    .line 1030
    :pswitch_8
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1031
    new-instance v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_12

    move v6, v9

    :goto_f
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_12
    move v6, v10

    goto :goto_f

    :cond_13
    move v6, v10

    .line 1036
    goto/16 :goto_d

    .line 1038
    :cond_14
    new-instance v0, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_15

    move v6, v9

    :goto_10
    iget-boolean v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v8}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/opengl/effect/lighten/LightenEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_15
    move v6, v10

    goto :goto_10

    .line 1048
    :pswitch_9
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->isBeautyMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 1061
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_19

    .line 1062
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_18

    move v6, v9

    :goto_11
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    .line 1051
    :pswitch_a
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1052
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_16

    move v6, v9

    :goto_12
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_16
    move v6, v10

    goto :goto_12

    .line 1056
    :pswitch_b
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_2

    .line 1057
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_17

    move v6, v9

    :goto_13
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_0

    :cond_17
    move v6, v10

    goto :goto_13

    :cond_18
    move v6, v10

    .line 1062
    goto/16 :goto_11

    .line 1064
    :cond_19
    new-instance v0, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v6}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v6, v7, :cond_1a

    move v6, v9

    :goto_14
    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v7}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;-><init>(Lcom/android/camera/app/AppController;IIIIZI)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_1a
    move v6, v10

    goto :goto_14

    .line 979
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_9
    .end packed-switch

    .line 981
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1002
    :pswitch_data_2
    .packed-switch 0x5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1023
    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1049
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private initWindowRect()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v11, -0x40800000    # -1.0f

    .line 330
    new-instance v0, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_RIGHT_RATIO:F

    iget v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->SUB_SIZE_RATIO:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_TOP_RATIO:F

    iget v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_RIGHT_RATIO:F

    iget v9, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->MARGIN_TOP_RATIO:F

    iget v10, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->SUB_SIZE_RATIO:F

    sub-float/2addr v9, v10

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 331
    .local v0, "defRect":Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v6}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_camera_screen_pip_pos_top"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "sPosTop":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v6}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    const-string v7, "default_scope"

    const-string v8, "pref_camera_screen_pip_pos_right"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 333
    .local v3, "sPosRight":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    :cond_0
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    .line 348
    :goto_0
    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    const/high16 v9, -0x40000000    # -2.0f

    div-float/2addr v8, v9

    invoke-direct {v6, v11, v7, v12, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 349
    return-void

    .line 336
    :cond_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 337
    .local v2, "posTop":F
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 338
    .local v1, "posRight":F
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->SUB_SIZE_RATIO:F

    sub-float v6, v1, v6

    iget v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->SUB_SIZE_RATIO:F

    sub-float v7, v2, v7

    invoke-direct {v5, v6, v2, v1, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 339
    .local v5, "targetRect":Landroid/graphics/RectF;
    iget v6, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v12

    if-gtz v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->left:F

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_2

    iget v6, v5, Landroid/graphics/RectF;->right:F

    cmpg-float v6, v6, v12

    if-gtz v6, :cond_2

    .line 341
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 343
    :cond_2
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    goto :goto_0
.end method

.method private isBeautyMode()Z
    .locals 1

    .prologue
    .line 1237
    iget-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mBeautyAllow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/app/AppController;

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

.method private onDualSightModeChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V
    .locals 3
    .param p1, "dualSightMode"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 943
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 945
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 946
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setVertexAndTexCoord()V

    .line 947
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->isSingleSight(Lcom/android/camera/opengl/dualsight/DualSightMode;)Z

    move-result v0

    .line 948
    .local v0, "nowIsSingle":Z
    if-eqz v0, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->initEffectEngine()V

    .line 952
    .end local v0    # "nowIsSingle":Z
    :cond_0
    monitor-exit v2

    .line 953
    return-void

    .line 952
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onEffectModeChanged(Lcom/android/camera/opengl/effect/EffectMode;)V
    .locals 2
    .param p1, "effectMode"    # Lcom/android/camera/opengl/effect/EffectMode;

    .prologue
    .line 956
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 957
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectMode:Lcom/android/camera/opengl/effect/EffectMode;

    .line 959
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->initEffectEngine()V

    .line 961
    :cond_0
    monitor-exit v1

    .line 962
    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onFrameAvalable(Lcom/android/camera/opengl/ImageSource;)V
    .locals 19
    .param p1, "imageSource"    # Lcom/android/camera/opengl/ImageSource;

    .prologue
    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 749
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7

    .line 750
    sget-object v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 769
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 770
    .local v14, "current":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    sub-long v4, v14, v4

    const-wide/16 v6, 0x14

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 771
    monitor-exit v18

    .line 940
    .end local v14    # "current":J
    :goto_1
    return-void

    .line 752
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    invoke-virtual {v2, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 755
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    goto :goto_0

    .line 939
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 759
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    invoke-virtual {v2, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 762
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    goto :goto_0

    .line 773
    .restart local v14    # "current":J
    :cond_1
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 775
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    if-eqz v2, :cond_7

    .line 776
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/opengl/effect/EffectEngine;->process(I[F)I

    move-result v17

    .line 779
    .local v17, "mainEffectTextureID":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/opengl/effect/EffectEngine;->process(I[F)I

    move-result v3

    .line 781
    .local v3, "slaveEffectTextureID":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v2}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v16

    .line 782
    .local v16, "dsmode":I
    sget-object v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v2, :cond_2

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 815
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_d

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v5, v17

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 827
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    if-eqz v2, :cond_3

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 831
    const/4 v2, -0x1

    if-eq v3, v2, :cond_f

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    sget-object v4, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 833
    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v4

    move/from16 v0, v16

    if-ne v0, v4, :cond_e

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 832
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 845
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$800(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_CONTROL_LINE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsLineLimited:Z

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/pip/opengl/ControlLineRenderer;->draw(Ljava/nio/FloatBuffer;[FZ)V

    .line 852
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordStarted:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    invoke-interface {v2}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 853
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/EglCore;->getGlVersion()I

    move-result v2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    if-nez v2, :cond_10

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2, v4}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrentReadFrom(Lcom/android/camera/pip/opengl/EglSurfaceBase;)V

    .line 855
    const-string v2, "before glBlitFramebuffer"

    invoke-static {v2}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 856
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 857
    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 858
    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v11

    const/16 v12, 0x4000

    const/16 v13, 0x2600

    .line 856
    invoke-static/range {v4 .. v13}, Landroid/opengl/GLES30;->glBlitFramebuffer(IIIIIIIIII)V

    .line 861
    const-string v2, "after glBlitFramebuffer"

    invoke-static {v2}, Lcom/android/camera/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 863
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 936
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 939
    .end local v3    # "slaveEffectTextureID":I
    .end local v14    # "current":J
    .end local v16    # "dsmode":I
    .end local v17    # "mainEffectTextureID":I
    :cond_7
    monitor-exit v18

    goto/16 :goto_1

    .line 778
    .restart local v14    # "current":J
    :cond_8
    const/16 v17, -0x1

    goto/16 :goto_2

    .line 779
    .restart local v17    # "mainEffectTextureID":I
    :cond_9
    const/4 v3, -0x1

    goto/16 :goto_3

    .line 784
    .restart local v3    # "slaveEffectTextureID":I
    .restart local v16    # "dsmode":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    if-eqz v2, :cond_a

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 787
    const/4 v2, -0x1

    if-eq v3, v2, :cond_b

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 797
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v2, :cond_3

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 800
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_c

    .line 801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v5, v17

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/EffectImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto/16 :goto_6

    .line 790
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_a

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_8

    .line 803
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_3

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_6

    .line 818
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_2

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_4

    .line 833
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_5

    .line 836
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_3

    .line 838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_6

    .line 868
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 869
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v6}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 870
    sget-object v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_2

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v2, :cond_11

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 902
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_16

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v5, v17

    invoke-virtual/range {v4 .. v10}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 912
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    if-eqz v2, :cond_12

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 915
    const/4 v2, -0x1

    if-eq v3, v2, :cond_18

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    sget-object v4, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_FULL_SLAVE_SUB:Lcom/android/camera/opengl/dualsight/DualSightMode;

    .line 917
    invoke-virtual {v4}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v4

    move/from16 v0, v16

    if-ne v0, v4, :cond_17

    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 916
    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 928
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/pip/opengl/WindowSurface;->setPresentationTime(J)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->swapBuffers()Z

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v2}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 932
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v5}, Lcom/android/camera/pip/opengl/WindowSurface;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v6}, Lcom/android/camera/pip/opengl/WindowSurface;->getHeight()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto/16 :goto_7

    .line 872
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    if-eqz v2, :cond_13

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 875
    const/4 v2, -0x1

    if-eq v3, v2, :cond_14

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v2 .. v8}, Lcom/android/camera/opengl/render/EffectImageRender;->updateBufferAndDraw(ILcom/android/camera/opengl/effect/EffectEngine;[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 885
    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    if-eqz v2, :cond_12

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 888
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_15

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    move/from16 v5, v17

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/EffectImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    goto/16 :goto_b

    .line 878
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_13

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_c

    .line 891
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_12

    .line 893
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_b

    .line 905
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_11

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V

    goto/16 :goto_9

    .line 917
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    goto/16 :goto_a

    .line 920
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSTMatrix:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/opengl/render/TextureImageRender;->draw(I[F[FLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    instance-of v2, v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    if-eqz v2, :cond_12

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    check-cast v2, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/camera/opengl/effect/theme/ThemeEffectEngine;->draw(Ljava/nio/FloatBuffer;Lcom/android/camera/opengl/dualsight/DualSightMode;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_b

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 782
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 870
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method private onLineWindowOffset(Landroid/graphics/PointF;)V
    .locals 8
    .param p1, "offset"    # Landroid/graphics/PointF;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1000(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    const v2, 0x3e0f5c29    # 0.14f

    sub-float v0, v1, v2

    .line 1110
    .local v0, "ratio":F
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsLineLimited:Z

    .line 1111
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1112
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v2, v3, v2

    invoke-virtual {v1, v2, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v7

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v2, v7, v2

    invoke-virtual {v1, v2, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 1114
    :cond_1
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1115
    iput-boolean v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsLineLimited:Z

    .line 1116
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    neg-float v2, v0

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v6, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 1119
    iput-boolean v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsLineLimited:Z

    .line 1120
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v2

    invoke-virtual {v1, v6, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1122
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setVertexAndTexCoord()V

    .line 1125
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    add-float/2addr v2, v7

    div-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 1127
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v5

    sub-float v5, v7, v5

    mul-float/2addr v4, v5

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v1, v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1129
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1130
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1100(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/opengl/GestureChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$500(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/opengl/GestureChangedListener;->onMoving(Landroid/graphics/RectF;)V

    .line 1131
    :cond_4
    return-void
.end method

.method private onSubWindowODragEnd()V
    .locals 0

    .prologue
    .line 1106
    return-void
.end method

.method private onSubWindowODragStart()V
    .locals 0

    .prologue
    .line 1088
    return-void
.end method

.method private onSubWindowOffset(Landroid/graphics/PointF;)V
    .locals 6
    .param p1, "offset"    # Landroid/graphics/PointF;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    .line 1091
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v1, v5, v1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v3, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, v5, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1096
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setVertexAndTexCoord()V

    .line 1097
    return-void
.end method

.method private release()V
    .locals 6

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$900()Lcom/android/camera/debug/Log$Tag;

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

    .line 1286
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 1287
    :try_start_0
    const-string v1, "sync mRelease done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1288
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1289
    const-string v1, "not stop before, stop it"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIinited:Z

    .line 1291
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 1292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 1293
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 1294
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 1295
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLastUpdateTimestamp:J

    .line 1296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsMainFrameAvailable:Z

    .line 1297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mIsSlaveFrameAvailable:Z

    .line 1298
    const-string v1, "reset flag done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1299
    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectEngineLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1300
    :try_start_1
    const-string v1, "sync mEffectEngineLock done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1301
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v1, :cond_0

    .line 1302
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 1303
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 1304
    const-string v1, "release mMainEffectEngine done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1306
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    if-eqz v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    invoke-virtual {v1}, Lcom/android/camera/opengl/effect/EffectEngine;->release()V

    .line 1308
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveEffectEngine:Lcom/android/camera/opengl/effect/EffectEngine;

    .line 1309
    const-string v1, "release mSlaveEffectEngine done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1311
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1312
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    if-eqz v1, :cond_2

    .line 1313
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    invoke-virtual {v1}, Lcom/android/camera/opengl/render/TextureImageRender;->release()V

    .line 1314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    .line 1315
    const-string v1, "release mTextureImageRender done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1317
    :cond_2
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    if-eqz v1, :cond_3

    .line 1318
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    invoke-virtual {v1}, Lcom/android/camera/opengl/render/EffectImageRender;->release()V

    .line 1319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 1320
    const-string v1, "release mEffectImageRender done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1322
    :cond_3
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

    if-eqz v1, :cond_4

    .line 1323
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/ControlLineRenderer;->release()V

    .line 1324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

    .line 1325
    const-string v1, "release mControlLineRenderer done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1327
    :cond_4
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_5

    .line 1328
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1329
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1330
    const-string v1, "release mMainSurfaceTexture done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1332
    :cond_5
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_6

    .line 1333
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1334
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1335
    const-string v1, "release mSlaveSurfaceTexture done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1337
    :cond_6
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_7

    .line 1338
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1339
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 1340
    const-string v1, "release mMainPreviewCallbackSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1342
    :cond_7
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    if-eqz v1, :cond_8

    .line 1343
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1344
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    .line 1345
    const-string v1, "release mSlavePreviewCallbackSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1347
    :cond_8
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v1, :cond_9

    .line 1348
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 1349
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 1350
    const-string v1, "release mWindowSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1352
    :cond_9
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_a

    .line 1353
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1354
    const-string v1, "clear mPreviewSurfaceTexture ref"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1356
    :cond_a
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v1, :cond_b

    .line 1357
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/WindowSurface;->release()V

    .line 1358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 1359
    const-string v1, "release mRecordSurface done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1361
    :cond_b
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    if-eqz v1, :cond_c

    .line 1362
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/EglCore;->release()V

    .line 1363
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    .line 1364
    const-string v1, "release mEglCore done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1367
    :cond_c
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1368
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1369
    return-void

    .line 1311
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 1367
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private resetVertexAndTexCoord()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 481
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x40800000    # -1.0f

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_TOUCH_AREA_SIZE_RATIO:F

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 482
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 483
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v4

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 484
    return-void
.end method

.method private setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 452
    :goto_0
    return-void

    .line 435
    :cond_0
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 436
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 438
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    invoke-direct {v0, v2, p1}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 439
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/WindowSurface;->makeCurrent()V

    .line 441
    new-instance v0, Lcom/android/camera/opengl/render/TextureImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/opengl/render/TextureImageRender;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mTextureImageRender:Lcom/android/camera/opengl/render/TextureImageRender;

    .line 442
    new-instance v0, Lcom/android/camera/opengl/render/EffectImageRender;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/android/camera/opengl/render/EffectImageRender;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEffectImageRender:Lcom/android/camera/opengl/render/EffectImageRender;

    .line 443
    new-instance v0, Lcom/android/camera/pip/opengl/ControlLineRenderer;

    invoke-direct {v0}, Lcom/android/camera/pip/opengl/ControlLineRenderer;-><init>()V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mControlLineRenderer:Lcom/android/camera/pip/opengl/ControlLineRenderer;

    .line 445
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setVertexAndTexCoord()V

    .line 447
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->initEffectEngine()V

    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mWindowSurfaceReady:Z

    .line 451
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
    .line 1277
    .local p1, "recordController":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordController:Lcom/android/camera/async/Observable;

    .line 1278
    return-void
.end method

.method private setRecordOutputSurface(Landroid/view/Surface;I)V
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recordOrientation"    # I

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 464
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v0, Lcom/android/camera/pip/opengl/WindowSurface;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mEglCore:Lcom/android/camera/pip/opengl/EglCore;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/android/camera/pip/opengl/WindowSurface;-><init>(Lcom/android/camera/pip/opengl/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurface:Lcom/android/camera/pip/opengl/WindowSurface;

    .line 459
    iput p2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    .line 460
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setVertexAndTexCoord()V

    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordSurfaceReady:Z

    .line 463
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

.method private setVertexAndTexCoord()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 488
    sget-object v0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$4;->$SwitchMap$com$android$camera$opengl$dualsight$DualSightMode:[I

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-virtual {v1}, Lcom/android/camera/opengl/dualsight/DualSightMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 713
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 714
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 715
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 716
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 717
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 731
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 732
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    .line 737
    :goto_0
    return-void

    .line 490
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 491
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v7}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 497
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 498
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 499
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 500
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 501
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_CONTROL_LINE:[F

    .line 507
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_0:[F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    invoke-static {v0, v8, v8, v1}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 508
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 509
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_0:[F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    invoke-static {v0, v9, v8, v1}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 510
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 511
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1}, Lcom/android/camera/pip/opengl/GLUtil;->transToCenterCropRatio(FLcom/android/camera/util/Size;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    .line 513
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_1

    .line 527
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 528
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 515
    :sswitch_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_90:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 516
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_90:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 519
    :sswitch_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_180:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 520
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_180:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 523
    :sswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_270:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 524
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_270:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 533
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$402(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;F)F

    .line 534
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$600(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v7, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v7}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$502(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 540
    :cond_1
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 541
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 542
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 543
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    .line 544
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CONTROL_LINE_THICKNESS:F

    iget-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v4}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_CONTROL_LINE:[F

    .line 550
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_0:[F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    invoke-static {v0, v9, v8, v1}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 551
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 552
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_0:[F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v1

    invoke-static {v0, v8, v8, v1}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 553
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 554
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1}, Lcom/android/camera/pip/opengl/GLUtil;->transToCenterCropRatio(FLcom/android/camera/util/Size;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->CROP_RATIO_MAIN:F

    .line 556
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_2

    .line 570
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 571
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 558
    :sswitch_3
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_90:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 559
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_90:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 562
    :sswitch_4
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_180:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 563
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_180:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 566
    :sswitch_5
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_UP_270:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v9, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 567
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_HALF_DOWN_270:[F

    iget v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$400(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)F

    move-result v2

    invoke-static {v0, v8, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transCoordinateByRatio([FZIF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 578
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 579
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 584
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 586
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_3

    .line 612
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 613
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 588
    :sswitch_6
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 589
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    neg-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 596
    :sswitch_7
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 597
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 604
    :sswitch_8
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 605
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 620
    :pswitch_3
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 625
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 626
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 627
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 630
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_4

    .line 656
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 657
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 632
    :sswitch_9
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    .line 633
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    neg-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    goto/16 :goto_0

    .line 640
    :sswitch_a
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    .line 641
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    goto/16 :goto_0

    .line 648
    :sswitch_b
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    .line 649
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v8

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    aput v1, v0, v9

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    aput v1, v0, v10

    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    aput v1, v0, v11

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    goto/16 :goto_0

    .line 663
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 664
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 665
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 666
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 667
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_5

    .line 681
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 682
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 669
    :sswitch_c
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 670
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 673
    :sswitch_d
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 674
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 677
    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 678
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 688
    :pswitch_5
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    .line 689
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    .line 690
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_0:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    .line 691
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_FULL:[F

    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v3}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->asLandscape()Lcom/android/camera/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->aspectRatio()F

    move-result v1

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    invoke-static {v0, v1, v2}, Lcom/android/camera/opengl/GLUtil;->transToCenterCropMatrix([FFLcom/android/camera/util/Size;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    .line 692
    iget v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordOrientation:I

    sparse-switch v0, :sswitch_data_6

    .line 706
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 707
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 694
    :sswitch_f
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 695
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 698
    :sswitch_10
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 699
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 702
    :sswitch_11
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 703
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 719
    :sswitch_12
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_90:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 720
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 723
    :sswitch_13
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_180:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 724
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 727
    :sswitch_14
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_FULL_270:[F

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_MAIN:[F

    .line 728
    iput-object v4, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->RECORD_VERTEX_SLAVE:[F

    goto/16 :goto_0

    .line 488
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 717
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_12
        0xb4 -> :sswitch_13
        0x10e -> :sswitch_14
    .end sparse-switch

    .line 513
    :sswitch_data_1
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch

    .line 556
    :sswitch_data_2
    .sparse-switch
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch

    .line 586
    :sswitch_data_3
    .sparse-switch
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_7
        0x10e -> :sswitch_8
    .end sparse-switch

    .line 630
    :sswitch_data_4
    .sparse-switch
        0x5a -> :sswitch_9
        0xb4 -> :sswitch_a
        0x10e -> :sswitch_b
    .end sparse-switch

    .line 667
    :sswitch_data_5
    .sparse-switch
        0x5a -> :sswitch_c
        0xb4 -> :sswitch_d
        0x10e -> :sswitch_e
    .end sparse-switch

    .line 692
    :sswitch_data_6
    .sparse-switch
        0x5a -> :sswitch_f
        0xb4 -> :sswitch_10
        0x10e -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-object v0
.end method

.method public getImageGenerator()Lcom/android/camera/opengl/image/ImageGenerator;
    .locals 13

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 1373
    new-instance v0, Lcom/android/camera/opengl/image/ImageGenerator;

    invoke-virtual {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->getCurrentDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v1

    new-instance v2, Lcom/android/camera/util/Size;

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$200(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v6}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$300(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)I

    move-result v6

    invoke-direct {v2, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    iget-object v5, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v5}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1700(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_MAIN:[F

    iget-object v9, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_MAIN:[F

    iget-object v10, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v11, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->VERTEX_SLAVE:[F

    iget-object v12, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->TEXTURE_SLAVE:[F

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v12}, Lcom/android/camera/opengl/image/ImageGenerator;-><init>(Lcom/android/camera/opengl/dualsight/DualSightMode;Lcom/android/camera/util/Size;IIIILcom/android/camera/one/OneCameraCharacteristics;[F[FLcom/android/camera/one/OneCameraCharacteristics;[F[F)V

    return-object v0
.end method

.method public getLineWindowRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mLineWindowRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getMainInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 4
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1140
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 1141
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewSize:Lcom/android/camera/util/Size;

    .line 1142
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainTextureId:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1143
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1144
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$1;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$1;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1151
    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    monitor-exit v1

    .line 1153
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 1241
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->isBeautyMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1249
    :goto_0
    return-object v0

    .line 1242
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1243
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 1245
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const-string v2, "Main Preview Callback Handler"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mMainPreviewCallbackSurface:Landroid/view/Surface;

    monitor-exit v1

    goto :goto_0

    .line 1251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1249
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSlaveInputSurface(Lcom/android/camera/util/Size;)Landroid/view/Surface;
    .locals 4
    .param p1, "previewSize"    # Lcom/android/camera/util/Size;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 1162
    iput-object p1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewSize:Lcom/android/camera/util/Size;

    .line 1163
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveTextureId:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1164
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v2, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$2;

    invoke-direct {v2, p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler$2;-><init>(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;)V

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1172
    :cond_0
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlaveSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    monitor-exit v1

    .line 1174
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSlavePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/util/Size;)Landroid/view/Surface;
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

    .line 1255
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->isBeautyMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1263
    :goto_0
    return-object v0

    .line 1256
    :cond_0
    iget-object v1, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1257
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1258
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 1259
    sget-object v0, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    const-string v2, "Slave Preview Callback Handler"

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    .line 1261
    :cond_1
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSlavePreviewCallbackSurface:Landroid/view/Surface;

    monitor-exit v1

    goto :goto_0

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1263
    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getSubWindowRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mSubWindowRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 353
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 400
    :goto_0
    :pswitch_0
    return-void

    .line 355
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->init()V

    goto :goto_0

    .line 358
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 361
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setRecordOutputSurface(Landroid/view/Surface;I)V

    goto :goto_0

    .line 364
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->clearRecordOutputSurface()V

    goto :goto_0

    .line 367
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/Observable;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->setRecordController(Lcom/android/camera/async/Observable;)V

    goto :goto_0

    .line 370
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/opengl/ImageSource;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onFrameAvalable(Lcom/android/camera/opengl/ImageSource;)V

    goto :goto_0

    .line 373
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/opengl/dualsight/DualSightMode;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onDualSightModeChanged(Lcom/android/camera/opengl/dualsight/DualSightMode;)V

    goto :goto_0

    .line 376
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/opengl/effect/EffectMode;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onEffectModeChanged(Lcom/android/camera/opengl/effect/EffectMode;)V

    goto :goto_0

    .line 379
    :pswitch_9
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onSubWindowODragStart()V

    goto :goto_0

    .line 382
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onSubWindowOffset(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 385
    :pswitch_b
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onSubWindowODragEnd()V

    goto :goto_0

    .line 391
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->onLineWindowOffset(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 397
    :pswitch_d
    invoke-direct {p0}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->release()V

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method

.method public setDualSightZoomParams(Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)V
    .locals 1
    .param p1, "zoomParams"    # Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->this$0:Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;

    invoke-static {v0, p1}, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;->access$1602(Lcom/android/camera/opengl/dualsight/DualSightPreviewRender;Lcom/android/camera/opengl/dualsight/DualSightZoomParams;)Lcom/android/camera/opengl/dualsight/DualSightZoomParams;

    .line 1282
    return-void
.end method

.method public startRecord()V
    .locals 1

    .prologue
    .line 1269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 1270
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 1273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/dualsight/DualSightPreviewRender$RendererHandler;->mRecordStarted:Z

    .line 1274
    return-void
.end method
