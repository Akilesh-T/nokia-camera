.class Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;
.super Ljava/lang/Object;
.source "VideoPreviewRender.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;->generatePreviewCallbackSurface(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;Ljava/lang/String;Lcom/android/camera/util/Size;)Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

.field final synthetic val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$previewCallbackImageReader:Landroid/media/ImageReader;


# direct methods
.method constructor <init>(Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/media/ImageReader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->this$1:Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler;

    iput-object p2, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->val$previewCallbackImageReader:Landroid/media/ImageReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->val$isClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/camera/opengl/video/VideoPreviewRender$RendererHandler$2;->val$previewCallbackImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 462
    :cond_0
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
