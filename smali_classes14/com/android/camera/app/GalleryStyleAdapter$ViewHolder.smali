.class public Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GalleryStyleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/app/GalleryStyleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

.field mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

.field mIv:Lcom/android/camera/ui/RotateImageView;

.field mLinearLayout:Landroid/widget/RelativeLayout;

.field mLoadingProgress:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 296
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    .line 297
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 298
    const v0, 0x7f0f0211

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLinearLayout:Landroid/widget/RelativeLayout;

    .line 301
    const v0, 0x7f0f0212

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    .line 302
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-static {p1}, Lcom/android/camera/app/GalleryStyleAdapter;->access$500(Lcom/android/camera/app/GalleryStyleAdapter;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 305
    const v0, 0x7f0f0213

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    .line 306
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-static {p1}, Lcom/android/camera/app/GalleryStyleAdapter;->access$500(Lcom/android/camera/app/GalleryStyleAdapter;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 307
    const v0, 0x7f0f0215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    .line 308
    const v0, 0x7f0f0214

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    .line 309
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-static {p1}, Lcom/android/camera/app/GalleryStyleAdapter;->access$500(Lcom/android/camera/app/GalleryStyleAdapter;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 311
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 345
    :goto_0
    return-void

    .line 333
    :pswitch_0
    invoke-static {}, Lcom/android/camera/app/GalleryStyleAdapter;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onClick: delete"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget v2, v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mPosition:I

    .line 335
    .local v2, "position":I
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 336
    .local v4, "key":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->access$800(Lcom/android/camera/app/GalleryStyleAdapter;)Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v3, v3, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    .line 337
    invoke-static {v5}, Lcom/android/camera/app/GalleryStyleAdapter;->access$700(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v6}, Lcom/android/camera/app/GalleryStyleAdapter;->access$100(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v6, v6, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v6}, Lcom/android/camera/effect/util/EffectDataInfo;->isCloudAbandoned()Z

    move-result v6

    .line 336
    invoke-interface/range {v0 .. v6}, Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;->onItemDeleteClick(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0214
        :pswitch_0
    .end packed-switch
.end method

.method public setVisibility(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 317
    .local v0, "param":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    if-eqz p1, :cond_0

    .line 318
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 319
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v1}, Lcom/android/camera/app/GalleryStyleAdapter;->access$600(Lcom/android/camera/app/GalleryStyleAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    .line 320
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    .line 324
    iput v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    goto :goto_0
.end method
