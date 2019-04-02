.class Lcom/android/camera/app/GalleryStyleAdapter$1;
.super Ljava/lang/Object;
.source "GalleryStyleAdapter.java"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/GalleryStyleAdapter;->onBindViewHolder(Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener",
        "<",
        "Landroid/net/Uri;",
        "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleAdapter;

.field final synthetic val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/camera/app/GalleryStyleAdapter;Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    iput-object p2, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iput p3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "model"    # Landroid/net/Uri;
    .param p4, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    if-eqz p1, :cond_0

    .line 162
    invoke-static {}, Lcom/android/camera/app/GalleryStyleAdapter;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/android/camera/app/GalleryStyleAdapter;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    const-string v1, "Glide onException()"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z
    .locals 1

    .prologue
    .line 158
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/app/GalleryStyleAdapter$1;->onException(Ljava/lang/Exception;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    return v0
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 10
    .param p1, "resource"    # Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;
    .param p2, "model"    # Landroid/net/Uri;
    .param p4, "isFromMemoryCache"    # Z
    .param p5, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            "Landroid/net/Uri;",
            "Lcom/bumptech/glide/request/target/Target",
            "<",
            "Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .local p3, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    const/4 v9, 0x1

    const v8, 0x3ee66666    # 0.45f

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 173
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    invoke-virtual {v3, v9}, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->setVisibility(Z)V

    .line 174
    const/4 v2, -0x1

    .line 175
    .local v2, "status":I
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$100(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 176
    .local v1, "mDataSize":I
    iget v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    if-lt v3, v1, :cond_0

    .line 177
    invoke-static {}, Lcom/android/camera/app/GalleryStyleAdapter;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResourceReady position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "error message:position>size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 179
    :cond_0
    iget v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    if-ge v3, v1, :cond_1

    .line 180
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$200(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$100(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 182
    :cond_1
    invoke-static {}, Lcom/android/camera/app/GalleryStyleAdapter;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResourceReady status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    if-eqz v2, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    .line 185
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 205
    :cond_3
    :goto_0
    return v7

    .line 187
    :cond_4
    if-ne v2, v9, :cond_5

    .line 188
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v8}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    .line 189
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 191
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 192
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 193
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 194
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    .line 195
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$100(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v0, v3, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 196
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$300(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 197
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$300(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_6
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->this$0:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-static {v3}, Lcom/android/camera/app/GalleryStyleAdapter;->access$400(Lcom/android/camera/app/GalleryStyleAdapter;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v7}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 202
    :cond_7
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter$1;->val$holder:Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z
    .locals 6

    .prologue
    .line 158
    move-object v1, p1

    check-cast v1, Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;

    move-object v2, p2

    check-cast v2, Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/app/GalleryStyleAdapter$1;->onResourceReady(Lcom/bumptech/glide/load/resource/drawable/GlideDrawable;Landroid/net/Uri;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    return v0
.end method
