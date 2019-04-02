.class Lcom/android/camera/VideoHal3Module$21$5;
.super Ljava/lang/Object;
.source "VideoHal3Module.java"

# interfaces
.implements Lcom/android/camera/video/LiveBroadcastStatusController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/VideoHal3Module$21;->onCameraOpened(Lcom/android/camera/one/OneCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/VideoHal3Module$21;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoHal3Module$21;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/VideoHal3Module$21;

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module$21$5;->this$1:Lcom/android/camera/VideoHal3Module$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatus(Lcom/android/camera/livebroadcast/status/CommentsAdapter;)V
    .locals 1
    .param p1, "commentsAdapter"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$5;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/VideoHal3ModuleUI;->updateLiveBroadcastAdapter(Lcom/android/camera/livebroadcast/status/CommentsAdapter;)V

    .line 2265
    return-void
.end method

.method public updateStatus(ILjava/util/List;Ljava/util/List;II)V
    .locals 6
    .param p1, "viewCount"    # I
    .param p4, "totalComments"    # I
    .param p5, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Reactions;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2269
    .local p2, "reactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Reactions;>;"
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module$21$5;->this$1:Lcom/android/camera/VideoHal3Module$21;

    iget-object v0, v0, Lcom/android/camera/VideoHal3Module$21;->this$0:Lcom/android/camera/VideoHal3Module;

    invoke-static {v0}, Lcom/android/camera/VideoHal3Module;->access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/VideoHal3ModuleUI;->updateLiveBroadcastStatus(ILjava/util/List;Ljava/util/List;II)V

    .line 2270
    return-void
.end method
