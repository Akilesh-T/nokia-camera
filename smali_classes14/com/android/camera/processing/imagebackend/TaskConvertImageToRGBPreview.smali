.class public Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskConvertImageToRGBPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
    }
.end annotation


# static fields
.field public static final OUT_OF_BOUNDS_COLOR:I = 0x0

.field public static final SHIFTED_BITS_AS_VALUE:D = 256.0

.field public static final SHIFT_APPROXIMATION:I = 0x8

.field protected static final TAG:Lcom/android/camera/debug/Log$Tag;

.field public static final U_FACTOR_FOR_B:I = 0x1c5

.field public static final U_FACTOR_FOR_G:I = -0x58

.field public static final V_FACTOR_FOR_G:I = -0xb6

.field public static final V_FACTOR_FOR_R:I = 0x166


# instance fields
.field protected final mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTargetSize:Lcom/android/camera/util/Size;

.field protected final mThumbnailShape:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskRGBPreview"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "processingPriority"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .param p5, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p6, "targetSize"    # Lcom/android/camera/util/Size;
    .param p7, "thumbnailShape"    # Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p8, "fastThumbnailResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 105
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mTargetSize:Lcom/android/camera/util/Size;

    .line 106
    iput-object p7, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mThumbnailShape:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    .line 107
    iput-object p8, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 108
    return-void
.end method

.method protected static calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I
    .locals 2
    .param p0, "inscribedXMin"    # I
    .param p1, "inscribedYMin"    # I
    .param p2, "subsample"    # I
    .param p3, "colorSubsample"    # I
    .param p4, "rowStride"    # I
    .param p5, "pixelStride"    # I
    .param p6, "inputHorizontalOffset"    # I
    .param p7, "inputVerticalOffset"    # I

    .prologue
    .line 191
    div-int v0, p4, p2

    mul-int/2addr v0, p7

    div-int v1, p5, p2

    mul-int/2addr v1, p6

    add-int/2addr v0, v1

    div-int v1, p1, p3

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    div-int v1, p0, p3

    mul-int/2addr v1, p5

    add-int/2addr v0, v1

    return v0
.end method

.method private static quantizeBy2(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 118
    div-int/lit8 v0, p0, 0x2

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method protected calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I
    .locals 6
    .param p1, "imageSize"    # Lcom/android/camera/util/Size;
    .param p2, "targetSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    .line 150
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    .line 149
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 151
    .local v1, "maxSubsample":I
    if-ge v1, v2, :cond_1

    move v0, v2

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_3

    .line 159
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    rem-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    rem-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 158
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 165
    goto :goto_0
.end method

.method protected calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 817
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 818
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 817
    return-object v0
.end method

.method protected calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 8
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "subsample"    # I

    .prologue
    .line 830
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 833
    .local v7, "safeCrop":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mThumbnailShape:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    if-ne v0, v1, :cond_0

    .line 834
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int v2, v0, p2

    .line 835
    .local v2, "resultWidth":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int v3, v0, p2

    .line 843
    .local v3, "resultHeight":I
    :goto_0
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    return-object v0

    .line 837
    .end local v2    # "resultWidth":I
    .end local v3    # "resultHeight":I
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, p2

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v6

    .line 839
    .local v6, "radius":I
    mul-int/lit8 v2, v6, 0x2

    .line 840
    .restart local v2    # "resultWidth":I
    mul-int/lit8 v3, v6, 0x2

    .restart local v3    # "resultHeight":I
    goto :goto_0
.end method

.method protected colorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)[I
    .locals 4
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "subsample"    # I

    .prologue
    const/4 v3, 0x0

    .line 233
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 235
    .local v0, "defaultCrop":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v1

    return-object v1
.end method

.method protected colorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I
    .locals 82
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "subsample"    # I

    .prologue
    .line 239
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 240
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v68

    .line 241
    .local v68, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 242
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect number planes ("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ") in YUV Image Object"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 246
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v56

    .line 247
    .local v56, "inputWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v55

    .line 248
    .local v55, "inputHeight":I
    div-int v67, v56, p3

    .line 249
    .local v67, "outputWidth":I
    div-int v65, v55, p3

    .line 250
    .local v65, "outputHeight":I
    move/from16 v77, v67

    .line 251
    .local v77, "w":I
    move/from16 v53, v65

    .line 252
    .local v53, "h":I
    move-object/from16 v0, p0

    move/from16 v1, v77

    move/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v69

    .line 259
    .local v69, "r":I
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v11

    .line 260
    .local v11, "inputVerticalOffset":I
    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v10

    .line 263
    .local v10, "inputHorizontalOffset":I
    move/from16 v0, v77

    move/from16 v1, v53

    if-le v0, v1, :cond_3

    .line 264
    const/16 v59, 0x0

    .line 265
    .local v59, "inscribedYMin":I
    move/from16 v58, v53

    .line 267
    .local v58, "inscribedYMax":I
    div-int/lit8 v6, v77, 0x2

    sub-int v6, v6, v69

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v4

    .line 268
    .local v4, "inscribedXMin":I
    div-int/lit8 v6, v77, 0x2

    add-int v6, v6, v69

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v57

    .line 277
    .local v57, "inscribedXMax":I
    :goto_0
    const/4 v6, 0x0

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v36

    .line 278
    .local v36, "buf0":Ljava/nio/ByteBuffer;
    const/4 v6, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v37

    .line 279
    .local v37, "bufU":Ljava/nio/ByteBuffer;
    const/4 v6, 0x2

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v38

    .line 280
    .local v38, "bufV":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v6

    mul-int v8, v6, p3

    .line 281
    .local v8, "yByteStride":I
    const/4 v6, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v6

    mul-int v16, v6, p3

    .line 282
    .local v16, "uByteStride":I
    const/4 v6, 0x2

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v6

    mul-int v22, v6, p3

    .line 283
    .local v22, "vByteStride":I
    const/4 v6, 0x0

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    mul-int v9, v6, p3

    .line 284
    .local v9, "yPixelStride":I
    const/4 v6, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    mul-int v17, v6, p3

    .line 285
    .local v17, "uPixelStride":I
    const/4 v6, 0x2

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    mul-int v23, v6, p3

    .line 286
    .local v23, "vPixelStride":I
    mul-int/lit8 v66, v69, 0x2

    .line 287
    .local v66, "outputPixelStride":I
    div-int/lit8 v40, v53, 0x2

    .line 288
    .local v40, "centerY":I
    div-int/lit8 v39, v77, 0x2

    .line 290
    .local v39, "centerX":I
    mul-int v6, v69, v69

    mul-int/lit8 v60, v6, 0x4

    .line 291
    .local v60, "len":I
    move/from16 v0, v60

    new-array v0, v0, [I

    move-object/from16 v47, v0

    .line 292
    .local v47, "colors":[I
    const/high16 v26, -0x1000000

    .line 294
    .local v26, "alpha":I
    const-string v6, "TIMER_BEGIN Starting Native Java YUV420-to-RGB Circular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 295
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t Y-Plane Size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v77

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t U-Plane Size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v6, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Pixel Stride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v6, 0x1

    .line 297
    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t V-Plane Size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v6, 0x2

    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Pixel Stride="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v6, 0x2

    .line 299
    move-object/from16 v0, v68

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 302
    move/from16 v5, v59

    .local v5, "j":I
    :goto_1
    move/from16 v0, v58

    if-ge v5, v0, :cond_2e

    .line 303
    sub-int v6, v5, v59

    mul-int v61, v6, v66

    .line 304
    .local v61, "offsetColor":I
    const/4 v7, 0x1

    move/from16 v6, p3

    invoke-static/range {v4 .. v11}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v64

    .line 307
    .local v64, "offsetY":I
    const/4 v15, 0x2

    div-int/lit8 v18, v10, 0x2

    div-int/lit8 v19, v11, 0x2

    move v12, v4

    move v13, v5

    move/from16 v14, p3

    invoke-static/range {v12 .. v19}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v62

    .line 310
    .local v62, "offsetU":I
    const/16 v21, 0x2

    div-int/lit8 v24, v10, 0x2

    div-int/lit8 v25, v11, 0x2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, p3

    invoke-static/range {v18 .. v25}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v63

    .line 317
    .local v63, "offsetV":I
    mul-int v6, v69, v69

    sub-int v7, v5, v40

    sub-int v12, v5, v40

    mul-int/2addr v7, v12

    sub-int/2addr v6, v7

    int-to-float v6, v6

    float-to-double v6, v6

    .line 318
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v12

    double-to-int v0, v6

    move/from16 v41, v0

    .line 319
    .local v41, "circleHalfWidth0":I
    sub-int v45, v39, v41

    .line 320
    .local v45, "circleMin0":I
    add-int v43, v39, v41

    .line 321
    .local v43, "circleMax0":I
    mul-int v6, v69, v69

    add-int/lit8 v7, v5, 0x1

    sub-int v7, v7, v40

    add-int/lit8 v12, v5, 0x1

    sub-int v12, v12, v40

    mul-int/2addr v7, v12

    sub-int/2addr v6, v7

    int-to-float v6, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v12

    double-to-int v0, v6

    move/from16 v42, v0

    .line 323
    .local v42, "circleHalfWidth1":I
    sub-int v46, v39, v42

    .line 324
    .local v46, "circleMin1":I
    add-int v44, v39, v42

    .line 329
    .local v44, "circleMax1":I
    move/from16 v54, v4

    .local v54, "i":I
    :goto_2
    move/from16 v0, v54

    move/from16 v1, v57

    if-ge v0, v1, :cond_2d

    .line 336
    move/from16 v0, v54

    move/from16 v1, v43

    if-le v0, v1, :cond_1

    move/from16 v0, v54

    move/from16 v1, v44

    if-gt v0, v1, :cond_2

    :cond_1
    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v45

    if-ge v6, v0, :cond_4

    move/from16 v0, v54

    move/from16 v1, v46

    if-ge v0, v1, :cond_4

    .line 337
    :cond_2
    const/4 v6, 0x0

    aput v6, v47, v61

    .line 338
    add-int/lit8 v6, v61, 0x1

    const/4 v7, 0x0

    aput v7, v47, v6

    .line 339
    add-int v6, v61, v66

    const/4 v7, 0x0

    aput v7, v47, v6

    .line 340
    add-int v6, v61, v66

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v47, v6

    .line 329
    :goto_3
    add-int/lit8 v54, v54, 0x2

    mul-int/lit8 v6, v9, 0x2

    add-int v64, v64, v6

    .line 330
    add-int/lit8 v61, v61, 0x2

    add-int v62, v62, v17

    add-int v63, v63, v23

    goto :goto_2

    .line 270
    .end local v4    # "inscribedXMin":I
    .end local v5    # "j":I
    .end local v8    # "yByteStride":I
    .end local v9    # "yPixelStride":I
    .end local v16    # "uByteStride":I
    .end local v17    # "uPixelStride":I
    .end local v22    # "vByteStride":I
    .end local v23    # "vPixelStride":I
    .end local v26    # "alpha":I
    .end local v36    # "buf0":Ljava/nio/ByteBuffer;
    .end local v37    # "bufU":Ljava/nio/ByteBuffer;
    .end local v38    # "bufV":Ljava/nio/ByteBuffer;
    .end local v39    # "centerX":I
    .end local v40    # "centerY":I
    .end local v41    # "circleHalfWidth0":I
    .end local v42    # "circleHalfWidth1":I
    .end local v43    # "circleMax0":I
    .end local v44    # "circleMax1":I
    .end local v45    # "circleMin0":I
    .end local v46    # "circleMin1":I
    .end local v47    # "colors":[I
    .end local v54    # "i":I
    .end local v57    # "inscribedXMax":I
    .end local v58    # "inscribedYMax":I
    .end local v59    # "inscribedYMin":I
    .end local v60    # "len":I
    .end local v61    # "offsetColor":I
    .end local v62    # "offsetU":I
    .end local v63    # "offsetV":I
    .end local v64    # "offsetY":I
    .end local v66    # "outputPixelStride":I
    :cond_3
    const/4 v4, 0x0

    .line 271
    .restart local v4    # "inscribedXMin":I
    move/from16 v57, v77

    .line 273
    .restart local v57    # "inscribedXMax":I
    div-int/lit8 v6, v53, 0x2

    sub-int v6, v6, v69

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v59

    .line 274
    .restart local v59    # "inscribedYMin":I
    div-int/lit8 v6, v53, 0x2

    add-int v6, v6, v69

    invoke-static {v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v58

    .restart local v58    # "inscribedYMax":I
    goto/16 :goto_0

    .line 346
    .restart local v5    # "j":I
    .restart local v8    # "yByteStride":I
    .restart local v9    # "yPixelStride":I
    .restart local v16    # "uByteStride":I
    .restart local v17    # "uPixelStride":I
    .restart local v22    # "vByteStride":I
    .restart local v23    # "vPixelStride":I
    .restart local v26    # "alpha":I
    .restart local v36    # "buf0":Ljava/nio/ByteBuffer;
    .restart local v37    # "bufU":Ljava/nio/ByteBuffer;
    .restart local v38    # "bufV":Ljava/nio/ByteBuffer;
    .restart local v39    # "centerX":I
    .restart local v40    # "centerY":I
    .restart local v41    # "circleHalfWidth0":I
    .restart local v42    # "circleHalfWidth1":I
    .restart local v43    # "circleMax0":I
    .restart local v44    # "circleMax1":I
    .restart local v45    # "circleMin0":I
    .restart local v46    # "circleMin1":I
    .restart local v47    # "colors":[I
    .restart local v54    # "i":I
    .restart local v60    # "len":I
    .restart local v61    # "offsetColor":I
    .restart local v62    # "offsetU":I
    .restart local v63    # "offsetV":I
    .restart local v64    # "offsetY":I
    .restart local v66    # "outputPixelStride":I
    :cond_4
    move-object/from16 v0, v37

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v75, v6, -0x80

    .line 347
    .local v75, "u":I
    move-object/from16 v0, v38

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v76, v6, -0x80

    .line 348
    .local v76, "v":I
    move/from16 v0, v76

    mul-int/lit16 v6, v0, 0x166

    shr-int/lit8 v74, v6, 0x8

    .line 349
    .local v74, "redDiff":I
    mul-int/lit8 v6, v75, -0x58

    move/from16 v0, v76

    mul-int/lit16 v7, v0, -0xb6

    add-int/2addr v6, v7

    shr-int/lit8 v52, v6, 0x8

    .line 351
    .local v52, "greenDiff":I
    move/from16 v0, v75

    mul-int/lit16 v6, v0, 0x1c5

    shr-int/lit8 v35, v6, 0x8

    .line 353
    .local v35, "blueDiff":I
    move/from16 v0, v54

    move/from16 v1, v43

    if-gt v0, v1, :cond_5

    move/from16 v0, v54

    move/from16 v1, v45

    if-ge v0, v1, :cond_9

    .line 354
    :cond_5
    const/4 v6, 0x0

    aput v6, v47, v61

    .line 390
    :goto_4
    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v43

    if-gt v6, v0, :cond_6

    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v45

    if-ge v6, v0, :cond_12

    .line 391
    :cond_6
    add-int/lit8 v6, v61, 0x1

    const/4 v7, 0x0

    aput v7, v47, v6

    .line 424
    :goto_5
    move/from16 v0, v54

    move/from16 v1, v44

    if-gt v0, v1, :cond_7

    move/from16 v0, v54

    move/from16 v1, v46

    if-ge v0, v1, :cond_1b

    .line 425
    :cond_7
    add-int v6, v61, v66

    const/4 v7, 0x0

    aput v7, v47, v6

    .line 457
    :goto_6
    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v44

    if-gt v6, v0, :cond_8

    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v46

    if-ge v6, v0, :cond_24

    .line 458
    :cond_8
    add-int v6, v61, v66

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v47, v6

    goto/16 :goto_3

    .line 357
    :cond_9
    move/from16 v0, v54

    move/from16 v1, v43

    if-eq v0, v1, :cond_a

    move/from16 v0, v54

    move/from16 v1, v45

    if-ne v0, v1, :cond_11

    :cond_a
    const/high16 v27, -0x80000000

    .line 359
    .local v27, "alpha00":I
    :goto_7
    move-object/from16 v0, v36

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v78, v0

    .line 361
    .local v78, "y00":I
    add-int v48, v78, v52

    .line 362
    .local v48, "green00":I
    add-int v31, v78, v35

    .line 363
    .local v31, "blue00":I
    add-int v70, v78, v74

    .line 366
    .local v70, "red00":I
    if-gez v48, :cond_b

    .line 367
    const/16 v48, 0x0

    .line 369
    :cond_b
    if-gez v70, :cond_c

    .line 370
    const/16 v70, 0x0

    .line 372
    :cond_c
    if-gez v31, :cond_d

    .line 373
    const/16 v31, 0x0

    .line 376
    :cond_d
    const/16 v6, 0xff

    move/from16 v0, v48

    if-le v0, v6, :cond_e

    .line 377
    const/16 v48, 0xff

    .line 379
    :cond_e
    const/16 v6, 0xff

    move/from16 v0, v70

    if-le v0, v6, :cond_f

    .line 380
    const/16 v70, 0xff

    .line 382
    :cond_f
    const/16 v6, 0xff

    move/from16 v0, v31

    if-le v0, v6, :cond_10

    .line 383
    const/16 v31, 0xff

    .line 386
    :cond_10
    move/from16 v0, v70

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x10

    move/from16 v0, v48

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move/from16 v0, v31

    and-int/lit16 v7, v0, 0xff

    or-int/2addr v6, v7

    or-int v6, v6, v27

    aput v6, v47, v61

    goto/16 :goto_4

    .line 357
    .end local v27    # "alpha00":I
    .end local v31    # "blue00":I
    .end local v48    # "green00":I
    .end local v70    # "red00":I
    .end local v78    # "y00":I
    :cond_11
    const/high16 v27, -0x1000000

    goto :goto_7

    .line 393
    :cond_12
    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v43

    if-eq v6, v0, :cond_13

    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v45

    if-ne v6, v0, :cond_1a

    :cond_13
    const/high16 v28, -0x80000000

    .line 395
    .local v28, "alpha01":I
    :goto_8
    add-int v6, v64, v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v79, v0

    .line 396
    .local v79, "y01":I
    add-int v49, v79, v52

    .line 397
    .local v49, "green01":I
    add-int v32, v79, v35

    .line 398
    .local v32, "blue01":I
    add-int v71, v79, v74

    .line 401
    .local v71, "red01":I
    if-gez v49, :cond_14

    .line 402
    const/16 v49, 0x0

    .line 404
    :cond_14
    if-gez v71, :cond_15

    .line 405
    const/16 v71, 0x0

    .line 407
    :cond_15
    if-gez v32, :cond_16

    .line 408
    const/16 v32, 0x0

    .line 411
    :cond_16
    const/16 v6, 0xff

    move/from16 v0, v49

    if-le v0, v6, :cond_17

    .line 412
    const/16 v49, 0xff

    .line 414
    :cond_17
    const/16 v6, 0xff

    move/from16 v0, v71

    if-le v0, v6, :cond_18

    .line 415
    const/16 v71, 0xff

    .line 417
    :cond_18
    const/16 v6, 0xff

    move/from16 v0, v32

    if-le v0, v6, :cond_19

    .line 418
    const/16 v32, 0xff

    .line 420
    :cond_19
    add-int/lit8 v6, v61, 0x1

    move/from16 v0, v71

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x10

    move/from16 v0, v49

    and-int/lit16 v12, v0, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    move/from16 v0, v32

    and-int/lit16 v12, v0, 0xff

    or-int/2addr v7, v12

    or-int v7, v7, v28

    aput v7, v47, v6

    goto/16 :goto_5

    .line 393
    .end local v28    # "alpha01":I
    .end local v32    # "blue01":I
    .end local v49    # "green01":I
    .end local v71    # "red01":I
    .end local v79    # "y01":I
    :cond_1a
    const/high16 v28, -0x1000000

    goto :goto_8

    .line 427
    :cond_1b
    move/from16 v0, v54

    move/from16 v1, v44

    if-eq v0, v1, :cond_1c

    move/from16 v0, v54

    move/from16 v1, v46

    if-ne v0, v1, :cond_23

    :cond_1c
    const/high16 v29, -0x80000000

    .line 428
    .local v29, "alpha10":I
    :goto_9
    add-int v6, v64, v8

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v80, v0

    .line 429
    .local v80, "y10":I
    add-int v50, v80, v52

    .line 430
    .local v50, "green10":I
    add-int v33, v80, v35

    .line 431
    .local v33, "blue10":I
    add-int v72, v80, v74

    .line 434
    .local v72, "red10":I
    if-gez v50, :cond_1d

    .line 435
    const/16 v50, 0x0

    .line 437
    :cond_1d
    if-gez v72, :cond_1e

    .line 438
    const/16 v72, 0x0

    .line 440
    :cond_1e
    if-gez v33, :cond_1f

    .line 441
    const/16 v33, 0x0

    .line 443
    :cond_1f
    const/16 v6, 0xff

    move/from16 v0, v50

    if-le v0, v6, :cond_20

    .line 444
    const/16 v50, 0xff

    .line 446
    :cond_20
    const/16 v6, 0xff

    move/from16 v0, v72

    if-le v0, v6, :cond_21

    .line 447
    const/16 v72, 0xff

    .line 449
    :cond_21
    const/16 v6, 0xff

    move/from16 v0, v33

    if-le v0, v6, :cond_22

    .line 450
    const/16 v33, 0xff

    .line 453
    :cond_22
    add-int v6, v61, v66

    move/from16 v0, v72

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x10

    move/from16 v0, v50

    and-int/lit16 v12, v0, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    move/from16 v0, v33

    and-int/lit16 v12, v0, 0xff

    or-int/2addr v7, v12

    or-int v7, v7, v29

    aput v7, v47, v6

    goto/16 :goto_6

    .line 427
    .end local v29    # "alpha10":I
    .end local v33    # "blue10":I
    .end local v50    # "green10":I
    .end local v72    # "red10":I
    .end local v80    # "y10":I
    :cond_23
    const/high16 v29, -0x1000000

    goto :goto_9

    .line 460
    :cond_24
    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v44

    if-eq v6, v0, :cond_25

    add-int/lit8 v6, v54, 0x1

    move/from16 v0, v46

    if-ne v6, v0, :cond_2c

    :cond_25
    const/high16 v30, -0x80000000

    .line 462
    .local v30, "alpha11":I
    :goto_a
    add-int v6, v64, v8

    add-int/2addr v6, v9

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    and-int/lit16 v0, v6, 0xff

    move/from16 v81, v0

    .line 463
    .local v81, "y11":I
    add-int v51, v81, v52

    .line 464
    .local v51, "green11":I
    add-int v34, v81, v35

    .line 465
    .local v34, "blue11":I
    add-int v73, v81, v74

    .line 468
    .local v73, "red11":I
    if-gez v51, :cond_26

    .line 469
    const/16 v51, 0x0

    .line 471
    :cond_26
    if-gez v73, :cond_27

    .line 472
    const/16 v73, 0x0

    .line 474
    :cond_27
    if-gez v34, :cond_28

    .line 475
    const/16 v34, 0x0

    .line 478
    :cond_28
    const/16 v6, 0xff

    move/from16 v0, v51

    if-le v0, v6, :cond_29

    .line 479
    const/16 v51, 0xff

    .line 482
    :cond_29
    const/16 v6, 0xff

    move/from16 v0, v73

    if-le v0, v6, :cond_2a

    .line 483
    const/16 v73, 0xff

    .line 485
    :cond_2a
    const/16 v6, 0xff

    move/from16 v0, v34

    if-le v0, v6, :cond_2b

    .line 486
    const/16 v34, 0xff

    .line 488
    :cond_2b
    add-int v6, v61, v66

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, v73

    and-int/lit16 v7, v0, 0xff

    shl-int/lit8 v7, v7, 0x10

    move/from16 v0, v51

    and-int/lit16 v12, v0, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v7, v12

    move/from16 v0, v34

    and-int/lit16 v12, v0, 0xff

    or-int/2addr v7, v12

    or-int v7, v7, v30

    aput v7, v47, v6

    goto/16 :goto_3

    .line 460
    .end local v30    # "alpha11":I
    .end local v34    # "blue11":I
    .end local v51    # "green11":I
    .end local v73    # "red11":I
    .end local v81    # "y11":I
    :cond_2c
    const/high16 v30, -0x1000000

    goto :goto_a

    .line 302
    .end local v35    # "blueDiff":I
    .end local v52    # "greenDiff":I
    .end local v74    # "redDiff":I
    .end local v75    # "u":I
    .end local v76    # "v":I
    :cond_2d
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_1

    .line 494
    .end local v41    # "circleHalfWidth0":I
    .end local v42    # "circleHalfWidth1":I
    .end local v43    # "circleMax0":I
    .end local v44    # "circleMax1":I
    .end local v45    # "circleMin0":I
    .end local v46    # "circleMin1":I
    .end local v54    # "i":I
    .end local v61    # "offsetColor":I
    .end local v62    # "offsetU":I
    .end local v63    # "offsetV":I
    .end local v64    # "offsetY":I
    :cond_2e
    const-string v6, "TIMER_END Starting Native Java YUV420-to-RGB Circular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 496
    return-object v47
.end method

.method protected colorSubSampleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;IZ)[I
    .locals 4
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "subsample"    # I
    .param p3, "enableSquareInscribe"    # Z

    .prologue
    const/4 v3, 0x0

    .line 512
    new-instance v0, Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v1

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 514
    .local v0, "defaultCrop":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorSubSampleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;IZ)[I

    move-result-object v1

    return-object v1
.end method

.method protected colorSubSampleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;IZ)[I
    .locals 71
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "subsample"    # I
    .param p4, "enableSquareInscribe"    # Z

    .prologue
    .line 552
    invoke-virtual/range {p0 .. p2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    .line 553
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v58

    .line 554
    .local v58, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 555
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect number planes ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") in YUV Image Object"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 559
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v46

    .line 560
    .local v46, "inputWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v45

    .line 561
    .local v45, "inputHeight":I
    div-int v57, v46, p3

    .line 562
    .local v57, "outputWidth":I
    div-int v55, v45, p3

    .line 566
    .local v55, "outputHeight":I
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v37

    .line 567
    .local v37, "bufY":Ljava/nio/ByteBuffer;
    const/4 v5, 0x1

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v35

    .line 568
    .local v35, "bufU":Ljava/nio/ByteBuffer;
    const/4 v5, 0x2

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v36

    .line 569
    .local v36, "bufV":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    mul-int v7, v5, p3

    .line 570
    .local v7, "yByteStride":I
    const/4 v5, 0x1

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    mul-int v15, v5, p3

    .line 571
    .local v15, "uByteStride":I
    const/4 v5, 0x2

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    mul-int v21, v5, p3

    .line 572
    .local v21, "vByteStride":I
    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    mul-int v8, v5, p3

    .line 573
    .local v8, "yPixelStride":I
    const/4 v5, 0x1

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    mul-int v16, v5, p3

    .line 574
    .local v16, "uPixelStride":I
    const/4 v5, 0x2

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    mul-int v22, v5, p3

    .line 584
    .local v22, "vPixelStride":I
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v10

    .line 585
    .local v10, "inputVerticalOffset":I
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v9

    .line 587
    .local v9, "inputHorizontalOffset":I
    if-eqz p4, :cond_1a

    .line 588
    move-object/from16 v0, p0

    move/from16 v1, v57

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v59

    .line 589
    .local v59, "r":I
    mul-int v5, v59, v59

    mul-int/lit8 v50, v5, 0x4

    .line 590
    .local v50, "len":I
    mul-int/lit8 v56, v59, 0x2

    .line 592
    .local v56, "outputPixelStride":I
    move/from16 v0, v57

    move/from16 v1, v55

    if-le v0, v1, :cond_19

    .line 594
    div-int/lit8 v5, v57, 0x2

    sub-int v5, v5, v59

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v3

    .line 595
    .local v3, "inscribedXMin":I
    div-int/lit8 v5, v57, 0x2

    add-int v5, v5, v59

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v47

    .line 596
    .local v47, "inscribedXMax":I
    const/16 v49, 0x0

    .line 597
    .local v49, "inscribedYMin":I
    move/from16 v48, v55

    .line 614
    .end local v59    # "r":I
    .local v48, "inscribedYMax":I
    :goto_0
    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v38, v0

    .line 615
    .local v38, "colors":[I
    const/high16 v25, -0x1000000

    .line 617
    .local v25, "alpha":I
    const-string v5, "TIMER_BEGIN Starting Native Java YUV420-to-RGB Rectangular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t Y-Plane Size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t U-Plane Size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pixel Stride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x1

    .line 620
    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t V-Plane Size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x2

    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pixel Stride="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v5, 0x2

    .line 622
    move-object/from16 v0, v58

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 621
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 625
    move/from16 v4, v49

    .local v4, "j":I
    :goto_1
    move/from16 v0, v48

    if-ge v4, v0, :cond_1c

    .line 626
    sub-int v5, v4, v49

    mul-int v51, v5, v56

    .line 627
    .local v51, "offsetColor":I
    const/4 v6, 0x1

    move/from16 v5, p3

    invoke-static/range {v3 .. v10}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v54

    .line 630
    .local v54, "offsetY":I
    const/4 v14, 0x2

    div-int/lit8 v17, v9, 0x2

    div-int/lit8 v18, v10, 0x2

    move v11, v3

    move v12, v4

    move/from16 v13, p3

    invoke-static/range {v11 .. v18}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v52

    .line 633
    .local v52, "offsetU":I
    const/16 v20, 0x2

    div-int/lit8 v23, v9, 0x2

    div-int/lit8 v24, v10, 0x2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, p3

    invoke-static/range {v17 .. v24}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateMemoryOffsetFromPixelOffsets(IIIIIIII)I

    move-result v53

    .line 640
    .local v53, "offsetV":I
    move/from16 v44, v3

    .local v44, "i":I
    :goto_2
    move/from16 v0, v44

    move/from16 v1, v47

    if-ge v0, v1, :cond_1b

    .line 650
    move-object/from16 v0, v35

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v65, v5, -0x80

    .line 651
    .local v65, "u":I
    move-object/from16 v0, v36

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v66, v5, -0x80

    .line 652
    .local v66, "v":I
    move/from16 v0, v66

    mul-int/lit16 v5, v0, 0x166

    shr-int/lit8 v64, v5, 0x8

    .line 653
    .local v64, "redDiff":I
    mul-int/lit8 v5, v65, -0x58

    move/from16 v0, v66

    mul-int/lit16 v6, v0, -0xb6

    add-int/2addr v5, v6

    shr-int/lit8 v43, v5, 0x8

    .line 654
    .local v43, "greenDiff":I
    move/from16 v0, v65

    mul-int/lit16 v5, v0, 0x1c5

    shr-int/lit8 v34, v5, 0x8

    .line 657
    .local v34, "blueDiff":I
    const/high16 v26, -0x1000000

    .line 659
    .local v26, "alpha00":I
    move-object/from16 v0, v37

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v67, v0

    .line 661
    .local v67, "y00":I
    add-int v39, v67, v43

    .line 662
    .local v39, "green00":I
    add-int v30, v67, v34

    .line 663
    .local v30, "blue00":I
    add-int v60, v67, v64

    .line 666
    .local v60, "red00":I
    if-gez v39, :cond_1

    .line 667
    const/16 v39, 0x0

    .line 669
    :cond_1
    if-gez v60, :cond_2

    .line 670
    const/16 v60, 0x0

    .line 672
    :cond_2
    if-gez v30, :cond_3

    .line 673
    const/16 v30, 0x0

    .line 676
    :cond_3
    const/16 v5, 0xff

    move/from16 v0, v39

    if-le v0, v5, :cond_4

    .line 677
    const/16 v39, 0xff

    .line 679
    :cond_4
    const/16 v5, 0xff

    move/from16 v0, v60

    if-le v0, v5, :cond_5

    .line 680
    const/16 v60, 0xff

    .line 682
    :cond_5
    const/16 v5, 0xff

    move/from16 v0, v30

    if-le v0, v5, :cond_6

    .line 683
    const/16 v30, 0xff

    .line 686
    :cond_6
    move/from16 v0, v60

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x10

    move/from16 v0, v39

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move/from16 v0, v30

    and-int/lit16 v6, v0, 0xff

    or-int/2addr v5, v6

    or-int v5, v5, v26

    aput v5, v38, v51

    .line 689
    const/high16 v27, -0x1000000

    .line 690
    .local v27, "alpha01":I
    add-int v5, v54, v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v68, v0

    .line 691
    .local v68, "y01":I
    add-int v40, v68, v43

    .line 692
    .local v40, "green01":I
    add-int v31, v68, v34

    .line 693
    .local v31, "blue01":I
    add-int v61, v68, v64

    .line 696
    .local v61, "red01":I
    if-gez v40, :cond_7

    .line 697
    const/16 v40, 0x0

    .line 699
    :cond_7
    if-gez v61, :cond_8

    .line 700
    const/16 v61, 0x0

    .line 702
    :cond_8
    if-gez v31, :cond_9

    .line 703
    const/16 v31, 0x0

    .line 706
    :cond_9
    const/16 v5, 0xff

    move/from16 v0, v40

    if-le v0, v5, :cond_a

    .line 707
    const/16 v40, 0xff

    .line 709
    :cond_a
    const/16 v5, 0xff

    move/from16 v0, v61

    if-le v0, v5, :cond_b

    .line 710
    const/16 v61, 0xff

    .line 712
    :cond_b
    const/16 v5, 0xff

    move/from16 v0, v31

    if-le v0, v5, :cond_c

    .line 713
    const/16 v31, 0xff

    .line 715
    :cond_c
    add-int/lit8 v5, v51, 0x1

    move/from16 v0, v61

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x10

    move/from16 v0, v40

    and-int/lit16 v11, v0, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v6, v11

    move/from16 v0, v31

    and-int/lit16 v11, v0, 0xff

    or-int/2addr v6, v11

    or-int v6, v6, v27

    aput v6, v38, v5

    .line 718
    const/high16 v28, -0x1000000

    .line 719
    .local v28, "alpha10":I
    add-int v5, v54, v7

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v69, v0

    .line 720
    .local v69, "y10":I
    add-int v41, v69, v43

    .line 721
    .local v41, "green10":I
    add-int v32, v69, v34

    .line 722
    .local v32, "blue10":I
    add-int v62, v69, v64

    .line 725
    .local v62, "red10":I
    if-gez v41, :cond_d

    .line 726
    const/16 v41, 0x0

    .line 728
    :cond_d
    if-gez v62, :cond_e

    .line 729
    const/16 v62, 0x0

    .line 731
    :cond_e
    if-gez v32, :cond_f

    .line 732
    const/16 v32, 0x0

    .line 734
    :cond_f
    const/16 v5, 0xff

    move/from16 v0, v41

    if-le v0, v5, :cond_10

    .line 735
    const/16 v41, 0xff

    .line 737
    :cond_10
    const/16 v5, 0xff

    move/from16 v0, v62

    if-le v0, v5, :cond_11

    .line 738
    const/16 v62, 0xff

    .line 740
    :cond_11
    const/16 v5, 0xff

    move/from16 v0, v32

    if-le v0, v5, :cond_12

    .line 741
    const/16 v32, 0xff

    .line 744
    :cond_12
    add-int v5, v51, v56

    move/from16 v0, v62

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x10

    move/from16 v0, v41

    and-int/lit16 v11, v0, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v6, v11

    move/from16 v0, v32

    and-int/lit16 v11, v0, 0xff

    or-int/2addr v6, v11

    or-int v6, v6, v28

    aput v6, v38, v5

    .line 747
    const/high16 v29, -0x1000000

    .line 748
    .local v29, "alpha11":I
    add-int v5, v54, v7

    add-int/2addr v5, v8

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v0, v5, 0xff

    move/from16 v70, v0

    .line 749
    .local v70, "y11":I
    add-int v42, v70, v43

    .line 750
    .local v42, "green11":I
    add-int v33, v70, v34

    .line 751
    .local v33, "blue11":I
    add-int v63, v70, v64

    .line 754
    .local v63, "red11":I
    if-gez v42, :cond_13

    .line 755
    const/16 v42, 0x0

    .line 757
    :cond_13
    if-gez v63, :cond_14

    .line 758
    const/16 v63, 0x0

    .line 760
    :cond_14
    if-gez v33, :cond_15

    .line 761
    const/16 v33, 0x0

    .line 764
    :cond_15
    const/16 v5, 0xff

    move/from16 v0, v42

    if-le v0, v5, :cond_16

    .line 765
    const/16 v42, 0xff

    .line 768
    :cond_16
    const/16 v5, 0xff

    move/from16 v0, v63

    if-le v0, v5, :cond_17

    .line 769
    const/16 v63, 0xff

    .line 771
    :cond_17
    const/16 v5, 0xff

    move/from16 v0, v33

    if-le v0, v5, :cond_18

    .line 772
    const/16 v33, 0xff

    .line 774
    :cond_18
    add-int v5, v51, v56

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v63

    and-int/lit16 v6, v0, 0xff

    shl-int/lit8 v6, v6, 0x10

    move/from16 v0, v42

    and-int/lit16 v11, v0, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v6, v11

    move/from16 v0, v33

    and-int/lit16 v11, v0, 0xff

    or-int/2addr v6, v11

    or-int v6, v6, v29

    aput v6, v38, v5

    .line 640
    add-int/lit8 v44, v44, 0x2

    mul-int/lit8 v5, v8, 0x2

    add-int v54, v54, v5

    .line 641
    add-int/lit8 v51, v51, 0x2

    add-int v52, v52, v16

    add-int v53, v53, v22

    goto/16 :goto_2

    .line 599
    .end local v3    # "inscribedXMin":I
    .end local v4    # "j":I
    .end local v25    # "alpha":I
    .end local v26    # "alpha00":I
    .end local v27    # "alpha01":I
    .end local v28    # "alpha10":I
    .end local v29    # "alpha11":I
    .end local v30    # "blue00":I
    .end local v31    # "blue01":I
    .end local v32    # "blue10":I
    .end local v33    # "blue11":I
    .end local v34    # "blueDiff":I
    .end local v38    # "colors":[I
    .end local v39    # "green00":I
    .end local v40    # "green01":I
    .end local v41    # "green10":I
    .end local v42    # "green11":I
    .end local v43    # "greenDiff":I
    .end local v44    # "i":I
    .end local v47    # "inscribedXMax":I
    .end local v48    # "inscribedYMax":I
    .end local v49    # "inscribedYMin":I
    .end local v51    # "offsetColor":I
    .end local v52    # "offsetU":I
    .end local v53    # "offsetV":I
    .end local v54    # "offsetY":I
    .end local v60    # "red00":I
    .end local v61    # "red01":I
    .end local v62    # "red10":I
    .end local v63    # "red11":I
    .end local v64    # "redDiff":I
    .end local v65    # "u":I
    .end local v66    # "v":I
    .end local v67    # "y00":I
    .end local v68    # "y01":I
    .end local v69    # "y10":I
    .end local v70    # "y11":I
    .restart local v59    # "r":I
    :cond_19
    const/4 v3, 0x0

    .line 600
    .restart local v3    # "inscribedXMin":I
    move/from16 v47, v57

    .line 602
    .restart local v47    # "inscribedXMax":I
    div-int/lit8 v5, v55, 0x2

    sub-int v5, v5, v59

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v49

    .line 603
    .restart local v49    # "inscribedYMin":I
    div-int/lit8 v5, v55, 0x2

    add-int v5, v5, v59

    invoke-static {v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v48

    .restart local v48    # "inscribedYMax":I
    goto/16 :goto_0

    .line 606
    .end local v3    # "inscribedXMin":I
    .end local v47    # "inscribedXMax":I
    .end local v48    # "inscribedYMax":I
    .end local v49    # "inscribedYMin":I
    .end local v50    # "len":I
    .end local v56    # "outputPixelStride":I
    .end local v59    # "r":I
    :cond_1a
    move/from16 v56, v57

    .line 607
    .restart local v56    # "outputPixelStride":I
    mul-int v50, v57, v55

    .line 608
    .restart local v50    # "len":I
    const/4 v3, 0x0

    .line 609
    .restart local v3    # "inscribedXMin":I
    invoke-static/range {v57 .. v57}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v47

    .line 610
    .restart local v47    # "inscribedXMax":I
    const/16 v49, 0x0

    .line 611
    .restart local v49    # "inscribedYMin":I
    invoke-static/range {v55 .. v55}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->quantizeBy2(I)I

    move-result v48

    .restart local v48    # "inscribedYMax":I
    goto/16 :goto_0

    .line 625
    .restart local v4    # "j":I
    .restart local v25    # "alpha":I
    .restart local v38    # "colors":[I
    .restart local v44    # "i":I
    .restart local v51    # "offsetColor":I
    .restart local v52    # "offsetU":I
    .restart local v53    # "offsetV":I
    .restart local v54    # "offsetY":I
    :cond_1b
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 778
    .end local v44    # "i":I
    .end local v51    # "offsetColor":I
    .end local v52    # "offsetU":I
    .end local v53    # "offsetV":I
    .end local v54    # "offsetY":I
    :cond_1c
    const-string v5, "TIMER_END Starting Native Java YUV420-to-RGB Rectangular Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 780
    return-object v38
.end method

.method protected dummyColorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)[I
    .locals 10
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "subsample"    # I

    .prologue
    .line 793
    const-string v8, "RUNNING DUMMY dummyColorInscribedDataCircleFromYuvImage"

    invoke-virtual {p0, v8}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 794
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v8

    div-int v5, v8, p2

    .line 795
    .local v5, "w":I
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v8

    div-int v1, v8, p2

    .line 796
    .local v1, "h":I
    invoke-virtual {p0, v5, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->inscribedCircleRadius(II)I

    move-result v4

    .line 797
    .local v4, "r":I
    mul-int v8, v4, v4

    mul-int/lit8 v3, v8, 0x4

    .line 798
    .local v3, "len":I
    new-array v0, v3, [I

    .line 801
    .local v0, "colors":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 802
    mul-int/lit8 v8, v4, 0x2

    rem-int v6, v2, v8

    .line 803
    .local v6, "x":I
    mul-int/lit8 v8, v4, 0x2

    div-int v7, v2, v8

    .line 804
    .local v7, "y":I
    const/high16 v8, -0x1000000

    and-int/lit16 v9, v6, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    and-int/lit16 v9, v7, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    aput v8, v0, v2

    .line 801
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 807
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_0
    return-object v0
.end method

.method protected inscribedCircleRadius(II)I
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 133
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onPreviewDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/graphics/Bitmap;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "resultImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p2, "inputImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "destination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 975
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mId:J

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 976
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 978
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, v1, p3}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/graphics/Bitmap;)V

    .line 979
    return-void
.end method

.method public onPreviewDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "resultImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p2, "inputImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p3, "colors"    # [I
    .param p4, "destination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 967
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mId:J

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 968
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 970
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;

    invoke-direct {v2, p3}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;-><init>([I)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUncompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;)V

    .line 971
    return-void
.end method

.method public run()V
    .locals 21

    .prologue
    .line 877
    const/16 v20, 0x0

    .line 879
    .local v20, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 881
    .local v15, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    iget-object v5, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget-object v6, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 882
    .local v18, "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v16

    .line 883
    .local v16, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    new-instance v5, Lcom/android/camera/util/Size;

    .line 884
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mTargetSize:Lcom/android/camera/util/Size;

    .line 883
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v19

    .line 886
    .local v19, "subsample":I
    const/4 v4, 0x0

    .line 887
    .local v4, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    const/4 v13, 0x0

    .line 889
    .local v13, "convertedImage":[I
    iget-object v5, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 945
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow image format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v15, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_0

    .line 951
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 954
    :cond_0
    return-void

    .line 891
    :sswitch_0
    :try_start_1
    new-instance v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .end local v4    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 892
    .restart local v4    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mId:J

    sget-object v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v5, p0

    move-object/from16 v8, v16

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :try_start_2
    iget-object v5, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 897
    .local v17, "origBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 898
    .local v12, "compressedData":Ljava/nio/ByteBuffer;
    if-eqz v12, :cond_2

    .line 899
    const-string v5, "TIMER_START - copy jpeg data from image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 901
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 902
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 903
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 904
    const-string v5, "TIMER_END - copy jpeg data from image."

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 907
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v14

    .line 908
    .local v14, "exifData":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual {v14}, Lcom/android/camera/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 909
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_4

    .line 910
    const-string v5, "getThumbnailBitmap done"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 911
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1, v11, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onPreviewDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/graphics/Bitmap;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 912
    const/16 v20, 0x1

    .line 917
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "exifData":Lcom/android/camera/exif/ExifInterface;
    :cond_1
    :goto_1
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 921
    :cond_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v15, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 950
    .end local v4    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v13    # "convertedImage":[I
    .end local v15    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .end local v16    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v17    # "origBuffer":Ljava/nio/ByteBuffer;
    .end local v18    # "safeCrop":Landroid/graphics/Rect;
    .end local v19    # "subsample":I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v6, :cond_3

    .line 951
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_3
    throw v5

    .line 914
    .restart local v4    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v11    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v13    # "convertedImage":[I
    .restart local v14    # "exifData":Lcom/android/camera/exif/ExifInterface;
    .restart local v15    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .restart local v16    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v17    # "origBuffer":Ljava/nio/ByteBuffer;
    .restart local v18    # "safeCrop":Landroid/graphics/Rect;
    .restart local v19    # "subsample":I
    :cond_4
    :try_start_4
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "can\'t load thumbnail from exif data, please check."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 921
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v14    # "exifData":Lcom/android/camera/exif/ExifInterface;
    .end local v17    # "origBuffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v15, v7}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v5

    .line 925
    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v4

    .line 926
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mId:J

    sget-object v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v5, p0

    move-object/from16 v8, v16

    move-object v9, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 928
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMER_START convert preview image, w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 929
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 930
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of subsample "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 928
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V

    .line 932
    iget-object v5, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->runSelectedConversion(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v13

    .line 933
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMER_END convert preview image, w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 934
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 935
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of subsample "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 933
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->logWrapper(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 939
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v15, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 941
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FAST_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1, v13, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->onPreviewDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 942
    const/16 v20, 0x1

    .line 943
    goto/16 :goto_0

    .line 939
    :catchall_2
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v15, v7}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 889
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method protected runSelectedConversion(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I
    .locals 2
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "subsample"    # I

    .prologue
    .line 858
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$1;->$SwitchMap$com$android$camera$processing$imagebackend$TaskConvertImageToRGBPreview$ThumbnailShape:[I

    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->mThumbnailShape:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    invoke-virtual {v1}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 868
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 860
    :pswitch_0
    invoke-virtual {p0, p1, p3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->dummyColorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)[I

    move-result-object v0

    goto :goto_0

    .line 862
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorInscribedDataCircleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v0

    goto :goto_0

    .line 864
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorSubSampleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    goto :goto_0

    .line 866
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;->colorSubSampleFromYuvImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;IZ)[I

    move-result-object v0

    goto :goto_0

    .line 858
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
