.class Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;


# direct methods
.method constructor <init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->start()V

    .line 146
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$500(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessStart()V

    .line 147
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;->this$0:Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    const-string v1, "ImageEngine.start"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
