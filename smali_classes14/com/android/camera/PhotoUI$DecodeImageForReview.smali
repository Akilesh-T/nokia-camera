.class Lcom/android/camera/PhotoUI$DecodeImageForReview;
.super Lcom/android/camera/PhotoUI$DecodeTask;
.source "PhotoUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PhotoUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecodeImageForReview"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/PhotoUI;[BIZ)V
    .locals 0
    .param p2, "data"    # [B
    .param p3, "orientation"    # I
    .param p4, "mirror"    # Z

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/camera/PhotoUI$DecodeImageForReview;->this$0:Lcom/android/camera/PhotoUI;

    .line 211
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/PhotoUI$DecodeTask;-><init>(Lcom/android/camera/PhotoUI;[BIZ)V

    .line 212
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoUI$DecodeImageForReview;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$200(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PhotoUI$DecodeImageForReview;->this$0:Lcom/android/camera/PhotoUI;

    invoke-static {v0}, Lcom/android/camera/PhotoUI;->access$200(Lcom/android/camera/PhotoUI;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoUI$DecodeImageForReview;->this$0:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->showIntentReviewImageView()V

    .line 223
    iget-object v0, p0, Lcom/android/camera/PhotoUI$DecodeImageForReview;->this$0:Lcom/android/camera/PhotoUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/PhotoUI;->access$302(Lcom/android/camera/PhotoUI;Lcom/android/camera/PhotoUI$DecodeImageForReview;)Lcom/android/camera/PhotoUI$DecodeImageForReview;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 209
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/camera/PhotoUI$DecodeImageForReview;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
