.class Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;
.super Ljava/lang/Object;
.source "CaptureSessionMicroVideoImpl.java"

# interfaces
.implements Lcom/android/camera/app/MediaSaver$OnRawDataSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

.field final synthetic val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRawDataSaved(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v0}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$300(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/SessionNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;->this$0:Lcom/android/camera/session/CaptureSessionMicroVideoImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionMicroVideoImpl;->access$200(Lcom/android/camera/session/CaptureSessionMicroVideoImpl;)Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/session/SessionNotifier;->notifyRawImageSaved(Ljava/lang/String;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V

    .line 780
    iget-object v0, p0, Lcom/android/camera/session/CaptureSessionMicroVideoImpl$7;->val$futureResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 781
    return-void
.end method
