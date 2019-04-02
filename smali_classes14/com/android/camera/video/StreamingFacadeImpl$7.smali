.class Lcom/android/camera/video/StreamingFacadeImpl$7;
.super Ljava/util/TimerTask;
.source "StreamingFacadeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/video/StreamingFacadeImpl;->updateRecordingTime()V
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
    .line 820
    iput-object p1, p0, Lcom/android/camera/video/StreamingFacadeImpl$7;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/camera/video/StreamingFacadeImpl$7;->this$0:Lcom/android/camera/video/StreamingFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/video/StreamingFacadeImpl;->access$2800(Lcom/android/camera/video/StreamingFacadeImpl;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/video/StreamingFacadeImpl$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/video/StreamingFacadeImpl$7$1;-><init>(Lcom/android/camera/video/StreamingFacadeImpl$7;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 829
    return-void
.end method
