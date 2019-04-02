.class Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;
.super Ljava/lang/Object;
.source "RtmpStreamerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->start(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$002(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$200(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$300(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    new-instance v2, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    invoke-direct {v2}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;-><init>()V

    invoke-static {v0, v2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$002(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 88
    iget-object v0, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$000(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v2}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$100(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0800cd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;

    invoke-static {v4}, Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;->access$400(Lcom/android/camera/livebroadcast/v2/streaming/RtmpStreamerConnection;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 90
    :cond_1
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
