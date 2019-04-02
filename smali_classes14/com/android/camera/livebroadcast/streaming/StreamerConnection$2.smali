.class Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;
.super Ljava/lang/Object;
.source "StreamerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->start(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$500(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$402(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$800(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    new-instance v2, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-direct {v2}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;-><init>()V

    invoke-static {v0, v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$402(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 190
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$500(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$500(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800cd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$2;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$900(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 192
    :cond_1
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
