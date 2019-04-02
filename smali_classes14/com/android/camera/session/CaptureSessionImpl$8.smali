.class Lcom/android/camera/session/CaptureSessionImpl$8;
.super Ljava/lang/Object;
.source "CaptureSessionImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionImpl;->saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionImpl;

    .prologue
    .line 861
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionImpl$8;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRawDataSaved(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionImpl;->access$300(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionImpl$8;->this$0:Lcom/android/camera/session/CaptureSessionImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionImpl;->access$200(Lcom/android/camera/session/CaptureSessionImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/SessionNotifier;->notifyRawImageSaved(Ljava/lang/String;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 865
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionImpl$8;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 866
    return-void
.end method
