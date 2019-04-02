.class Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->onConnectionWeak()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;)V
    .locals 0
    .param p1, "this$3"    # Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v0, v0, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v1, v1, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$accountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    sget-object v2, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->START:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;

    sget-object v3, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;->MESSAGE:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;

    iget-object v4, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v4, v4, Lcom/android/camera/video/StreamingFacadeImpl$4;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v4}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2100(Lcom/android/camera/video/StreamingFacadeImpl;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0800bc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget-object v5, v5, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$liveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v6, p0, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2$4;->this$3:Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;

    iget-object v6, v6, Lcom/android/camera/video/StreamingFacadeImpl$4$2$2;->this$2:Lcom/android/camera/video/StreamingFacadeImpl$4$2;

    iget-object v6, v6, Lcom/android/camera/video/StreamingFacadeImpl$4$2;->this$1:Lcom/android/camera/video/StreamingFacadeImpl$4;

    iget v6, v6, Lcom/android/camera/video/StreamingFacadeImpl$4;->val$streaming_orientation:I

    invoke-static/range {v0 .. v6}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2500(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/livebroadcast/AccountAgent;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Lcom/android/camera/livebroadcast/LiveBroadcastManager;I)V

    .line 588
    return-void
.end method
