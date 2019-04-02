.class Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;
.super Ljava/lang/Object;
.source "StateReviewingPicture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->processEvent(Lcom/android/camera/captureintent/event/EventPictureCompressed;)Lcom/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/captureintent/state/StateReviewingPicture$7;

.field final synthetic val$mirrorSettings:Z

.field final synthetic val$pictureData:[B

.field final synthetic val$pictureOrientation:I


# direct methods
.method constructor <init>(Lcom/android/camera/captureintent/state/StateReviewingPicture$7;[BIZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/captureintent/state/StateReviewingPicture$7;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->this$1:Lcom/android/camera/captureintent/state/StateReviewingPicture$7;

    iput-object p2, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$pictureData:[B

    iput p3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$pictureOrientation:I

    iput-boolean p4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$mirrorSettings:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$pictureData:[B

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$pictureOrientation:I

    iget-boolean v4, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$mirrorSettings:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/captureintent/PictureDecoder;->decode([BIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, "pictureBitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->this$1:Lcom/android/camera/captureintent/state/StateReviewingPicture$7;

    iget-object v1, v1, Lcom/android/camera/captureintent/state/StateReviewingPicture$7;->this$0:Lcom/android/camera/captureintent/state/StateReviewingPicture;

    invoke-virtual {v1}, Lcom/android/camera/captureintent/state/StateReviewingPicture;->getStateMachine()Lcom/android/camera/captureintent/stateful/StateMachine;

    move-result-object v1

    new-instance v2, Lcom/android/camera/captureintent/event/EventPictureDecoded;

    iget-object v3, p0, Lcom/android/camera/captureintent/state/StateReviewingPicture$7$1;->val$pictureData:[B

    invoke-direct {v2, v0, v3}, Lcom/android/camera/captureintent/event/EventPictureDecoded;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-interface {v1, v2}, Lcom/android/camera/captureintent/stateful/StateMachine;->processEvent(Lcom/android/camera/captureintent/stateful/Event;)V

    .line 229
    return-void
.end method
