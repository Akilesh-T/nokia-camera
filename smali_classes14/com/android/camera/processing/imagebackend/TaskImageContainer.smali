.class public abstract Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;,
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field protected final mId:J

.field protected final mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

.field protected final mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

.field protected final mProcessingPriority:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

.field protected final mSession:Lcom/android/camera/session/CaptureSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskImgContain"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V
    .locals 2
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "Executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "preferredLane"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .param p5, "captureSession"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 189
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mId:J

    .line 190
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 191
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    .line 192
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mProcessingPriority:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .line 193
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 194
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;)V
    .locals 2
    .param p1, "otherTask"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p2, "processingPriority"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-wide v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mId:J

    iput-wide v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mId:J

    .line 168
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mExecutor:Ljava/util/concurrent/Executor;

    .line 169
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    .line 170
    iput-object p2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mProcessingPriority:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .line 171
    iget-object v0, p1, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 173
    return-void
.end method


# virtual methods
.method protected addOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 2
    .param p1, "orientation1"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p2, "orientation2"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 213
    invoke-virtual {p1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 214
    invoke-virtual {p2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    invoke-static {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    return-object v0
.end method

.method public getProcessingPriority()Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mProcessingPriority:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    return-object v0
.end method

.method public guaranteedSafeCrop(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "crop"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 249
    if-nez p3, :cond_1

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 253
    .local v0, "safeCrop":Landroid/graphics/Rect;
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v2, :cond_2

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-gt v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_2

    .line 254
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_3

    .line 255
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "safeCrop":Landroid/graphics/Rect;
    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 258
    .restart local v0    # "safeCrop":Landroid/graphics/Rect;
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 259
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 260
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 261
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 263
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_0

    .line 264
    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "safeCrop":Landroid/graphics/Rect;
    invoke-direct {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "crop"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->guaranteedSafeCrop(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "aDestination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 308
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 309
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 310
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onStart(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 311
    return-void
.end method

.method public requiresCropOperation(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Z
    .locals 4
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "crop"    # Landroid/graphics/Rect;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    const/4 v2, 0x0

    .line 279
    if-nez p2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v2

    .line 282
    :cond_1
    const/4 v1, 0x0

    .line 283
    .local v1, "imageWidth":I
    const/4 v0, 0x0

    .line 285
    .local v0, "imageHeight":I
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->isImageHWRotate()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-eq p3, v3, :cond_2

    sget-object v3, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-ne p3, v3, :cond_3

    .line 289
    :cond_2
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v1

    .line 290
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v0

    .line 295
    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 292
    :cond_3
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v1

    .line 293
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method protected rotateBoundingBox(Landroid/graphics/Rect;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "box"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 201
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-ne p2, v0, :cond_1

    .line 203
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 206
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method
