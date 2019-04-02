.class public Lcom/android/camera/livebroadcast/status/CommentsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CommentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCommentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/livebroadcast/status/Comment;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mCommentList:Ljava/util/List;

    .line 26
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mCommentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->onBindViewHolder(Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 43
    iget-object v6, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mCommentList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/status/Comment;

    .line 44
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    iget-object v3, p1, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    .line 45
    .local v3, "nameView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/Comment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v2, p1, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mDialogueView:Landroid/widget/TextView;

    .line 47
    .local v2, "dialogueView":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/Comment;->getDialogue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, p1, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;->mThumbnailView:Landroid/widget/ImageView;

    .line 49
    .local v4, "thumbnailView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/Comment;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/Comment;->getCommentType()Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    move-result-object v1

    .line 52
    .local v1, "commentType":Lcom/android/camera/livebroadcast/status/Comment$CommentType;
    sget-object v6, Lcom/android/camera/livebroadcast/status/Comment$CommentType;->NOTICE:Lcom/android/camera/livebroadcast/status/Comment$CommentType;

    if-ne v1, v6, :cond_0

    .line 53
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v6, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0e006e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v6, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    invoke-direct {v6}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;-><init>()V

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 64
    invoke-virtual {v6, v7}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->scaleType(Landroid/widget/ImageView$ScaleType;)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v6

    .line 65
    invoke-virtual {v6, v8}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->borderColor(I)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual {v6, v7}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->borderWidthDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v6

    const/high16 v7, 0x42480000    # 50.0f

    .line 67
    invoke-virtual {v6, v7}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->cornerRadiusDp(F)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v6

    .line 68
    invoke-virtual {v6, v8}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->oval(Z)Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Lcom/makeramen/roundedimageview/RoundedTransformationBuilder;->build()Lcom/squareup/picasso/Transformation;

    move-result-object v5

    .line 71
    .local v5, "transformation":Lcom/squareup/picasso/Transformation;
    iget-object v6, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v6

    .line 72
    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/Comment;->getThumbnailURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 73
    invoke-virtual {v6}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020107

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02011f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/squareup/picasso/RequestCreator;->error(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 77
    invoke-virtual {v6, v5}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    .line 78
    invoke-virtual {v6, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040046

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "commentView":Landroid/view/View;
    new-instance v2, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;-><init>(Lcom/android/camera/livebroadcast/status/CommentsAdapter;Landroid/view/View;)V

    .line 38
    .local v2, "viewHolder":Lcom/android/camera/livebroadcast/status/CommentsAdapter$ViewHolder;
    return-object v2
.end method
