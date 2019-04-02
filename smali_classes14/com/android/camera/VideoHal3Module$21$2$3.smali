.class Lcom/android/camera/VideoHal3Module$21$2$3;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21$2;->onRecordingStoped()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/VideoHal3Module$21$2;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/VideoHal3Module$21$2;

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$2$3;->this$2:Lcom/android/camera/VideoHal3Module$21$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$2$3;->this$2:Lcom/android/camera/VideoHal3Module$21$2;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21$2;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/VideoHal3Module;->access$5100(Lcom/android/camera/VideoHal3Module;Z)V

    .line 2165
    return-void
.end method
