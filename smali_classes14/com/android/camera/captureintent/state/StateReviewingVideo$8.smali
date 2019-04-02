.class Lcom/android/camera/captureintent/state/StateReviewingVideo$8;
.super Ljava/lang/Object;
.source "StateReviewingVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReviewingVideo;->showVideo(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReviewingVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/captureintent/state/StateReviewingVideo;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v0}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$000(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Lcom/android/camera/async/RefCountBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/async/RefCountBase;->get()Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    check-cast v0, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;

    invoke-interface {v0}, Lcom/android/camera/captureintent/resource/ResourceCaptureTools;->getModuleUI()Lcom/android/camera/captureintent/CaptureIntentModuleUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v1}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$400(Lcom/android/camera/captureintent/state/StateReviewingVideo;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/captureintent/state/StateReviewingVideo$8;->this$0:Lcom/android/camera/captureintent/state/StateReviewingVideo;

    invoke-static {v2}, Lcom/android/camera/captureintent/state/StateReviewingVideo;->access$500(Lcom/android/camera/captureintent/state/StateReviewingVideo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/captureintent/CaptureIntentModuleUI;->showReviewUI(Landroid/graphics/Bitmap;I)V

    .line 201
    return-void
.end method
