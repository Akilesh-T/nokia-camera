.class Lcom/android/camera/video/StreamingFacadeImpl$5;
.super Ljava/lang/Object;
.source "StreamingFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl;->stopBurst()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/video/StreamingFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/video/StreamingFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/video/StreamingFacadeImpl;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$5;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$5;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$5;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/CountdownController;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$5;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2700(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/CountdownController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/CountdownController;->cancelCountDown()V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$5;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$000(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/video/RecordReadyStateChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/video/RecordReadyStateChangeListener;->onRecordingStoping()V

    .line 667
    return-void
.end method
