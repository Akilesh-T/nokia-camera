.class public Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/status/CommentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field protected mDialogueView:Landroid/widget/TextView;

.field protected mNameView:Landroid/widget/TextView;

.field protected mThumbnailView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/CommentsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/livebroadcast/status/CommentsAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->this$0:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    const v0, 0x7f0f0132

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0f0133

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mDialogueView:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f0f0131

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mThumbnailView:Landroid/widget/ImageView;

    .line 93
    return-void
.end method
