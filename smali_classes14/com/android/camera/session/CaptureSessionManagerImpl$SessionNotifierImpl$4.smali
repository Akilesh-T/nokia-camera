.class Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->notifyRawImageSaved(Ljava/lang/String;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v1, v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v1, v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 148
    .local v0, "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    if-ne v0, v3, :cond_0

    .line 149
    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$4;->val$path:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionRawImageSaved(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    return-void
.end method
