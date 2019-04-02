.class Lcom/android/camera/session/PanoCaptureSessionImpl$3;
.super Ljava/lang/Object;
.source "PanoCaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/PanoCaptureSessionImpl;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$postProcessImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/session/PanoCaptureSessionImpl;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/PanoCaptureSessionImpl;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->val$postProcessImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$500(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$100(Lcom/android/camera/session/PanoCaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v0, p1}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$002(Lcom/android/camera/session/PanoCaptureSessionImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 442
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$300(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$100(Lcom/android/camera/session/PanoCaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->val$postProcessImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$200(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 443
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$100(Lcom/android/camera/session/PanoCaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 448
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-static {}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/android/camera/session/PanoCaptureSessionImpl$3;->this$0:Lcom/android/camera/session/PanoCaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/PanoCaptureSessionImpl;->access$700(Lcom/android/camera/session/PanoCaptureSessionImpl;)Lcom/android/camera/app/MediaSaver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V

    goto :goto_0
.end method
