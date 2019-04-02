.class Lcom/android/camera/widget/RoundedThumbnailView$1;
.super Ljava/lang/Object;
.source "RoundedThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/widget/RoundedThumbnailView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 211
    invoke-static {}, Lcom/android/camera/widget/RoundedThumbnailView;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$1;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$100(Lcom/android/camera/widget/RoundedThumbnailView;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/widget/RoundedThumbnailView$Callback;

    invoke-interface {v0}, Lcom/android/camera/widget/RoundedThumbnailView$Callback;->onHitStateFinished()V

    .line 243
    :cond_0
    return-void
.end method
