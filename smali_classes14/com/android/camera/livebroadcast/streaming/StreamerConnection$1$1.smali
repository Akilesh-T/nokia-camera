.class Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;
.super Ljava/lang/Object;
.source "StreamerConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v0}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$400(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    iget-object v1, v1, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$500(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;->hide(Landroid/app/Activity;)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1$1;->this$1:Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;

    iget-object v0, v0, Lcom/android/camera/livebroadcast/streaming/StreamerConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamerConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/livebroadcast/streaming/StreamerConnection;->access$402(Lcom/android/camera/livebroadcast/streaming/StreamerConnection;Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;)Lcom/android/camera/livebroadcast/DialogUtil$LoadDialog;

    .line 106
    :cond_0
    return-void
.end method
