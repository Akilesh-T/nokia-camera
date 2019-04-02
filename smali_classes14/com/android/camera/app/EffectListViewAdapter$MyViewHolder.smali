.class public Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EffectListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/EffectListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyViewHolder"
.end annotation


# instance fields
.field data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

.field public imageView:Lcom/android/camera/ui/RotateImageView;

.field itemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 137
    iput-object p1, p0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    .line 138
    const v0, 0x7f0f010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    .line 139
    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    invoke-static {}, Lcom/android/camera/app/EffectListViewAdapter;->access$000()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 140
    return-void
.end method
