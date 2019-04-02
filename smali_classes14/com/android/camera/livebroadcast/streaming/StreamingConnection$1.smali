.class Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;
.super Ljava/lang/Object;
.source "StreamingConnection.java"

# interfaces
.implements Lcom/laifeng/sopcastsdk/utils/SopCastUtils$INotUIProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$000(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)I

    move-result v0

    .line 146
    .local v0, "result":I
    if-nez v0, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$1;

    invoke-direct {v2, p0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$1;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;)V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$300(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/laifeng/sopcastsdk/controller/StreamController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/laifeng/sopcastsdk/controller/StreamController;->start()V

    .line 167
    :cond_1
    :goto_0
    return-void

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$100(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/android/camera/livebroadcast/streaming/StreamingConnection$LivingStartListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;->this$0:Lcom/android/camera/livebroadcast/streaming/StreamingConnection;

    invoke-static {v1}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection;->access$200(Lcom/android/camera/livebroadcast/streaming/StreamingConnection;)Lcom/laifeng/sopcastsdk/utils/WeakHandler;

    move-result-object v1

    new-instance v2, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1$2;-><init>(Lcom/android/camera/livebroadcast/streaming/StreamingConnection$1;I)V

    invoke-virtual {v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
