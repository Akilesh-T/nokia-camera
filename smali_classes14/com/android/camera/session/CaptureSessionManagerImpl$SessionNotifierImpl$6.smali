.class Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->notifyTaskCanceled(Landroid/net/Uri;ZLcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

.field final synthetic val$needRecoverThumbnail:Z

.field final synthetic val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Landroid/net/Uri;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    iput-boolean p4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$needRecoverThumbnail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/Storage;->isSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/Storage;->isVideoSessionUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/android/camera/Storage;->getContentUriForSessionUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 189
    .local v0, "contentUri":Landroid/net/Uri;
    :goto_0
    if-eqz v0, :cond_1

    .line 190
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getPostProcessManager()Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/PostProcessManager;->notifyMediaPostProcessFail(Landroid/net/Uri;)V

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v2, v2, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 193
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v2, v2, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v2}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 194
    .local v1, "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    if-ne v1, v4, :cond_2

    .line 195
    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    iget-boolean v5, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$needRecoverThumbnail:Z

    invoke-interface {v1, v4, v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionCanceled(Landroid/net/Uri;Z)V

    goto :goto_1

    .line 198
    .end local v1    # "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 188
    .end local v0    # "contentUri":Landroid/net/Uri;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    .restart local v0    # "contentUri":Landroid/net/Uri;
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v2, v2, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$6;->val$uri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$200(Lcom/android/camera/session/CaptureSessionManagerImpl;Landroid/net/Uri;)V

    .line 200
    return-void
.end method
