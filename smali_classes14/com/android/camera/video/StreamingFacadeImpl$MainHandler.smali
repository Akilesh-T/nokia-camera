.class Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;
.super Landroid/os/Handler;
.source "StreamingFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/video/StreamingFacadeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field private final mVideoFacade:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/video/VideoFacade;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/video/StreamingFacadeImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;Lcom/android/camera/video/VideoFacade;)V
    .locals 1
    .param p2, "videoFacade"    # Lcom/android/camera/video/VideoFacade;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    .line 126
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->mVideoFacade:Ljava/lang/ref/WeakReference;

    .line 128
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->mVideoFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/video/VideoFacade;

    .line 133
    .local v0, "videoFacade":Lcom/android/camera/video/VideoFacade;
    if-nez v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-virtual {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingUIChanged(Z)V

    goto :goto_0

    .line 142
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/camera/video/StreamingFacadeImpl$MainHandler;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v1}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingUIChanged(Z)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
