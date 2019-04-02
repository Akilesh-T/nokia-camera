.class Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;
.super Ljava/lang/Object;
.source "OneCameraZslImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/OneCameraZslImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCaptureTask"
.end annotation


# instance fields
.field private final mParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p2, "parameters"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p3, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 252
    iput-object p3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 253
    return-void
.end method


# virtual methods
.method public onImageCaptured(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 10
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 257
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p2, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 262
    .local v4, "timestamp":J
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v7

    monitor-enter v7

    .line 263
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 276
    const-wide/16 v2, 0x18

    .line 277
    .local v2, "maxTimestamps":J
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v8, v2

    if-lez v6, :cond_1

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    .local v1, "timestamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    .line 281
    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    int-to-long v8, v6

    cmp-long v6, v8, v2

    if-lez v6, :cond_1

    .line 282
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "i":I
    .end local v1    # "timestamps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "maxTimestamps":J
    :cond_0
    monitor-exit v7

    .line 292
    :goto_1
    return-void

    .line 285
    .restart local v2    # "maxTimestamps":J
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    invoke-static {v6}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$200(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/util/ListenerCombiner;

    move-result-object v6

    sget-object v7, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/util/ListenerCombiner;->setInput(Ljava/lang/Enum;Z)Z

    .line 289
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->this$0:Lcom/android/camera/one/v2/OneCameraZslImpl;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-static {v6, p1, v7, v8, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$300(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/media/Image;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V

    .line 290
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mParams:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v6, v6, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v6, v7}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 291
    invoke-static {}, Lcom/android/camera/one/v2/OneCameraZslImpl;->access$400()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Image saved.  Frame number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v2    # "maxTimestamps":J
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
