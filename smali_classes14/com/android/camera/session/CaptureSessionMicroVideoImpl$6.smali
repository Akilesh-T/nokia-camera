.class Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;
.super Ljava/lang/Object;
.source "CaptureSessionMicroVideoImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$postProcessImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->val$postProcessImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$500(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$100(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0, p1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$002(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 718
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$300(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$100(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->val$postProcessImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v3}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$200(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/camera/session/SessionNotifier;->notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 719
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$100(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 724
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$600()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$6;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$700(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/app/MediaSaver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V

    goto :goto_0
.end method
