.class Lcom/android/camera/session/CaptureSessionImpl$7;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnMediaUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->savePostProcessImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$mirroredProcessImage:Landroid/graphics/Bitmap;

.field final synthetic val$postProcessImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$mirroredProcessImage:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$postProcessImage:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaUpdated(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$500(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/session/CaptureSessionManager;->isSessionAlive(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0, p1}, Lcom/android/camera/session/CaptureSessionImpl;->access$002(Lcom/android/camera/session/CaptureSessionImpl;Landroid/net/Uri;)Landroid/net/Uri;

    .line 794
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$600(Lcom/android/camera/session/CaptureSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$mirroredProcessImage:Landroid/graphics/Bitmap;

    :goto_0
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v3}, Lcom/android/camera/session/CaptureSessionImpl;->access$200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lcom/android/camera/session/SessionNotifier;->notifyPostProcessImageDone(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 795
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$100(Lcom/android/camera/session/CaptureSessionImpl;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 800
    :goto_1
    return-void

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->val$postProcessImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 797
    :cond_1
    invoke-static {}, Lcom/android/camera/session/CaptureSessionImpl;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "session had been cancel after saving PostProcessImage, delete here."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$800(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/app/MediaSaver;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/MediaSaver;->deleteImageFromMediaStore(Landroid/net/Uri;)V

    goto :goto_1
.end method
