.class Lcom/android/camera/video/StreamingFacadeImpl$6;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl;->stopLiveBroadcast(Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/StreamingFacadeImpl;

.field final synthetic val$remove:Z


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$6;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    iput-boolean p2, p0, Lcom/android/camera/video/StreamingFacadeImpl$6;->val$remove:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;
    .param p2, "errorCode"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$ErrorCode;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "params"    # Ljava/lang/Object;

    .prologue
    .line 720
    invoke-static {}, Lcom/android/camera/video/StreamingFacadeImpl;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopLiveBroadcast result : Stage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ErrorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remove = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/video/StreamingFacadeImpl$6;->val$remove:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 721
    sget-object v0, Lcom/android/camera/video/StreamingFacadeImpl$8;->$SwitchMap$com$android$camera$livebroadcast$LiveBroadcastManager$StatusCallback$Stage:[I

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 727
    :pswitch_0
    return-void

    .line 721
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
