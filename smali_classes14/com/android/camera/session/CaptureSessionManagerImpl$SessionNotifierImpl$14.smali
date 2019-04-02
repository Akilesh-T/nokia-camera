.class Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;
.super Ljava/lang/Object;
.source "CaptureSessionManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->notifySessionVideoDataAvailable(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILcom/android/camera/session/CaptureSessionManager$SessionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

.field final synthetic val$finalPath:Ljava/lang/String;

.field final synthetic val$mimetype:Ljava/lang/String;

.field final synthetic val$orientation:I

.field final synthetic val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

.field final synthetic val$thumbnail:Landroid/graphics/Bitmap;

.field final synthetic val$videoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;Lcom/android/camera/session/CaptureSessionManager$SessionListener;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iput-object p2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    iput-object p3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$videoUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$finalPath:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$mimetype:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$thumbnail:Landroid/graphics/Bitmap;

    iput p7, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$orientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v1, v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v6

    monitor-enter v6

    .line 349
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->this$1:Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;

    iget-object v1, v1, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl;->this$0:Lcom/android/camera/session/CaptureSessionManagerImpl;

    invoke-static {v1}, Lcom/android/camera/session/CaptureSessionManagerImpl;->access$000(Lcom/android/camera/session/CaptureSessionManagerImpl;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    .line 350
    .local v0, "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$sessionListener:Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$videoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$finalPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$mimetype:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$thumbnail:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/camera/session/CaptureSessionManagerImpl$SessionNotifierImpl$14;->val$orientation:I

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager$SessionListener;->onSessionVideoDataUpdate(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 354
    .end local v0    # "listener":Lcom/android/camera/session/CaptureSessionManager$SessionListener;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    return-void
.end method
