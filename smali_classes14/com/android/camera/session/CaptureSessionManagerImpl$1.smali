.class Lcom/android/camera/session/CaptureSessionManagerImpl$1;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl;->fillTemporarySession(Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

.field final synthetic val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/session/CaptureSessionManagerImpl;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 525
    .local v1, "sessionUri":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v3}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$400(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSession;

    .line 526
    .local v0, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionQueued(Landroid/net/Uri;)V

    .line 527
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgress()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionProgress(Landroid/net/Uri;I)V

    .line 528
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$1;->val$listener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 529
    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->getProgressMessageId()I

    move-result v5

    .line 528
    invoke-interface {v3, v4, v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionProgressText(Landroid/net/Uri;I)V

    goto :goto_0

    .line 531
    .end local v0    # "session":Lcom/android/camera/session/CaptureSession;
    .end local v1    # "sessionUri":Ljava/lang/String;
    :cond_0
    return-void
.end method
