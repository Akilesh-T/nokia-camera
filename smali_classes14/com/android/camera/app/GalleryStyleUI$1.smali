.class Lcom/android/camera/app/GalleryStyleUI$1;
.super Ljava/lang/Object;
.source "GalleryStyleUI.java"

# interfaces
.implements Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/app/GalleryStyleUI;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/app/GalleryStyleUI;


# direct methods
.method constructor <init>(Lcom/android/camera/app/GalleryStyleUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;IILjava/lang/String;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "effectCategory"    # I
    .param p4, "effectKey"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GalleryStyleUI->onItemClick() category:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " key: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 150
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$100(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    move-result-object v7

    invoke-interface {v7, p3, p4}, Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;->onCellClick(ILjava/lang/String;)V

    .line 153
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getmData()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v7, v7, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "from":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v7, "cloud"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 156
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$300(Lcom/android/camera/app/GalleryStyleUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    invoke-static {p4}, Lcom/android/camera/effect/download/DownLoaderManager;->isNeedDownloadResourceZipAgain(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v7

    if-eq p3, v7, :cond_0

    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v7

    if-ne p3, v7, :cond_3

    .line 159
    :cond_0
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$300(Lcom/android/camera/app/GalleryStyleUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    move-result-object v8

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getmData()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    .line 160
    invoke-static {p3}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getStringFromValue(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    invoke-virtual {v8, v7, v9}, Lcom/android/camera/effect/download/DownLoaderManager;->executeWebStickerFileDownRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 173
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$400(Lcom/android/camera/app/GalleryStyleUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v5

    .local v5, "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    move-object v3, v5

    .line 175
    check-cast v3, Landroid/support/v7/widget/LinearLayoutManager;

    .line 176
    .local v3, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v6, 0x0

    .line 178
    .local v6, "middlechild":I
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 179
    .local v0, "childCount":I
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getItemCount()I

    move-result v7

    if-eq v0, v7, :cond_2

    .line 181
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "childCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    div-int/lit8 v6, v0, 0x2

    .line 184
    :cond_2
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "middlechild:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 188
    if-nez p2, :cond_4

    .line 189
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$400(Lcom/android/camera/app/GalleryStyleUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 206
    :goto_1
    return-void

    .line 161
    .end local v0    # "childCount":I
    .end local v3    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .end local v5    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .end local v6    # "middlechild":I
    :cond_3
    sget-object v7, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v7}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v7

    if-ne p3, v7, :cond_1

    .line 162
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$300(Lcom/android/camera/app/GalleryStyleUI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/effect/download/DownLoaderManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/effect/download/DownLoaderManager;

    move-result-object v8

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getmData()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-virtual {v8, v7}, Lcom/android/camera/effect/download/DownLoaderManager;->executeWebAnimojiDownRunnable(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;)V

    goto/16 :goto_0

    .line 192
    .restart local v0    # "childCount":I
    .restart local v3    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    .restart local v5    # "manager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .restart local v6    # "middlechild":I
    :cond_4
    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v7

    add-int/2addr v7, v6

    if-gt p2, v7, :cond_6

    .line 193
    add-int/lit8 v7, p2, 0x1

    sub-int v2, v7, v6

    .line 194
    .local v2, "i":I
    if-gez v2, :cond_5

    const/4 v4, 0x0

    .line 195
    .local v4, "mPosition":I
    :goto_2
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "first_value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$400(Lcom/android/camera/app/GalleryStyleUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto :goto_1

    .end local v4    # "mPosition":I
    :cond_5
    move v4, v2

    .line 194
    goto :goto_2

    .line 199
    .end local v2    # "i":I
    :cond_6
    add-int/lit8 v7, p2, -0x1

    add-int v2, v7, v6

    .line 200
    .restart local v2    # "i":I
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getItemCount()I

    move-result v7

    if-lt v2, v7, :cond_7

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/GalleryStyleAdapter;->getItemCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 201
    .restart local v4    # "mPosition":I
    :goto_3
    invoke-static {}, Lcom/android/camera/app/GalleryStyleUI;->access$000()Lcom/android/camera/debug/Log$Tag;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "second_value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleUI$1;->this$0:Lcom/android/camera/app/GalleryStyleUI;

    invoke-static {v7}, Lcom/android/camera/app/GalleryStyleUI;->access$400(Lcom/android/camera/app/GalleryStyleUI;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    goto/16 :goto_1

    .end local v4    # "mPosition":I
    :cond_7
    move v4, v2

    .line 200
    goto :goto_3
.end method
