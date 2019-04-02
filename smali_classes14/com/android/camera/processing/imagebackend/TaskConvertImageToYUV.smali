.class public Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskConvertImageToYUV.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskConvtImgToYUV"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 6
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p6    # Lcom/google/common/util/concurrent/SettableFuture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p5, "byteBufferResourcePool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    .local p6, "convertToYUVResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;>;"
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 46
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 47
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 48
    return-void
.end method

.method private convertYUVFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "aligned64_width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 173
    if-nez p1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    .line 175
    if-eqz p2, :cond_0

    .line 177
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImageProxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aligned64 size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "origin outBuf = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 182
    .local v2, "y_buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 183
    .local v0, "u_buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 184
    .local v1, "v_buffer":Ljava/nio/ByteBuffer;
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "y_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 189
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 190
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outBuf after copy y_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    mul-int v3, p3, p4

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outBuf after move to align64 position = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 196
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outBuf after copy v_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 199
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outBuf after copy u_buffer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 202
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    goto/16 :goto_0
.end method


# virtual methods
.method protected calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 61
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 62
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 61
    return-object v0
.end method

.method protected calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 73
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 74
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 73
    return-object v0
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onConvertDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "resultImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p2, "inputImage"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p3, "yuvData"    # [B
    .param p4, "destination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 167
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mId:J

    move-object v4, p2

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 168
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 170
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 82
    const/16 v16, 0x0

    .line 84
    .local v16, "convertedData":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    move-object/from16 v21, v0

    .line 85
    .local v21, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v23

    .line 86
    .local v23, "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v8

    .line 87
    .local v8, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v9

    .line 88
    .local v9, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    const/16 v19, 0x0

    .line 93
    .local v19, "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 150
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow image format : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_1

    .line 156
    if-eqz v16, :cond_c

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v5, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 95
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mId:J

    sget-object v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_YUV_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :try_start_2
    iget v5, v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    int-to-double v6, v5

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    mul-int/lit8 v17, v5, 0x40

    .line 99
    .local v17, "aligned64_width":I
    iget v5, v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    mul-int v5, v5, v17

    int-to-float v5, v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 100
    .local v4, "IMAGE_SIZE":I
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMAGE_SIZE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    move-result-object v19

    .line 102
    const-string v5, "byteBufferResource acquire"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->logWrapper(Ljava/lang/String;)V

    .line 103
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/nio/ByteBuffer;

    .line 104
    .local v18, "byteBuffer":Ljava/nio/ByteBuffer;
    const-string v5, "byteBufferResource get"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->logWrapper(Ljava/lang/String;)V

    .line 106
    if-nez v18, :cond_3

    .line 108
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "memory allocation failure : require size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_1

    .line 156
    if-eqz v16, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v5, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "convertedData is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 113
    :cond_3
    :try_start_4
    const-string v5, "TIMER_BEGIN convertYUVFromYUV420Image Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->logWrapper(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget v6, v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->convertYUVFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;II)I

    move-result v22

    .line 115
    .local v22, "numBytesRequired":I
    const-string v5, "TIMER_END convertYUVFromYUV420Image Conversion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->logWrapper(Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numBytesRequired = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    if-gez v22, :cond_5

    .line 119
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "numBytesRequired < 0"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_1

    .line 156
    if-eqz v16, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v5, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "convertedData is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 131
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 135
    :try_start_7
    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 136
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 138
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->CONVERT_YUV_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v8, v1, v5}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->onConvertDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 144
    if-eqz v19, :cond_0

    .line 145
    :try_start_8
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 155
    .end local v4    # "IMAGE_SIZE":I
    .end local v8    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v9    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v17    # "aligned64_width":I
    .end local v18    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v19    # "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    .end local v21    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .end local v22    # "numBytesRequired":I
    .end local v23    # "safeCrop":Landroid/graphics/Rect;
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v6, :cond_6

    .line 156
    if-eqz v16, :cond_d

    .line 157
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v7, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v7, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v7, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v7, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v6, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 159
    :cond_6
    :goto_2
    throw v5

    .line 122
    .restart local v8    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v9    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v19    # "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    .restart local v21    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .restart local v23    # "safeCrop":Landroid/graphics/Rect;
    :catch_0
    move-exception v20

    .line 123
    .local v20, "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when convert to YUV : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    if-eqz v19, :cond_7

    .line 125
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 127
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 131
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v5, v0, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 155
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_1

    .line 156
    if-eqz v16, :cond_8

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v5, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "convertedData is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 131
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :try_start_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v21

    invoke-interface {v6, v0, v7}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 139
    .restart local v4    # "IMAGE_SIZE":I
    .restart local v17    # "aligned64_width":I
    .restart local v18    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v22    # "numBytesRequired":I
    :catch_1
    move-exception v20

    .line 140
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_c
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when get data from buffer : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 144
    if-eqz v19, :cond_9

    .line 145
    :try_start_d
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 155
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v5, :cond_1

    .line 156
    if-eqz v16, :cond_a

    .line 157
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v10, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v11, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->cameraType:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v12, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->dualSightCamType:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget v13, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->index:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-wide v14, v6, Lcom/android/camera/processing/imagebackend/ImageToProcess;->timestamp:J

    invoke-direct/range {v10 .. v16}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;IJ[B)V

    invoke-virtual {v5, v10}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 159
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "convertedData is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 144
    .end local v20    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    if-eqz v19, :cond_b

    .line 145
    :try_start_e
    invoke-interface/range {v19 .. v19}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    :cond_b
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 159
    .end local v4    # "IMAGE_SIZE":I
    .end local v17    # "aligned64_width":I
    .end local v18    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v22    # "numBytesRequired":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "convertedData is null"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .end local v8    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v9    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v19    # "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    .end local v21    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .end local v23    # "safeCrop":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskConvertImageToYUV;->mConvertToYUVResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "convertedData is null"

    invoke-direct {v7, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_2

    .line 93
    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method
