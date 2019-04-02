.class public Lcom/android/camera/app/EffectListViewAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "EffectListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;,
        Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;,
        Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static mOrientation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mListHolder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

.field private mState:Lcom/android/camera/effect/EffectChooseState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "EffectListViewAdapter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/EffectListViewAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mOnItemClickListener:Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

    .line 63
    iput-object p1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    .line 66
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/android/camera/app/EffectListViewAdapter;->mOrientation:I

    return v0
.end method

.method private initData(Landroid/content/Context;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Z)Ljava/util/ArrayList;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p3, "isFrontCameraFacing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v2, "effectItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;>;"
    const/4 v7, 0x0

    .line 146
    .local v7, "keys_res_id":I
    const/4 v5, 0x0

    .line 147
    .local v5, "icons_res_id":I
    const/4 v1, 0x0

    .line 148
    .local v1, "disableIcons_res_id":I
    invoke-static {p2}, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->isDualSightMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 149
    const v7, 0x7f0d00ac

    .line 150
    const v5, 0x7f0d00ad

    .line 151
    const v1, 0x7f0d00ad

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "key":[Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v4

    .line 164
    .local v4, "icons":[I
    invoke-static {p1, v1}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v0

    .line 165
    .local v0, "disableIcons":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v8, v6

    if-ge v3, v8, :cond_2

    .line 166
    new-instance v8, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v10, v4, v3

    aget v11, v0, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;-><init>(III)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "disableIcons":[I
    .end local v3    # "i":I
    .end local v4    # "icons":[I
    .end local v6    # "key":[Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 153
    const v7, 0x7f0d00af

    .line 154
    const v5, 0x7f0d00b0

    .line 155
    const v1, 0x7f0d00ae

    goto :goto_0

    .line 157
    :cond_1
    const v7, 0x7f0d00be

    .line 158
    const v5, 0x7f0d00bf

    .line 159
    const v1, 0x7f0d00bd

    goto :goto_0

    .line 169
    .restart local v0    # "disableIcons":[I
    .restart local v3    # "i":I
    .restart local v4    # "icons":[I
    .restart local v6    # "key":[Ljava/lang/String;
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mEffectDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mEffectDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadData(Landroid/content/Context;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;ZLcom/android/camera/effect/EffectChooseState;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    .param p3, "isFrontCameraFacing"    # Z
    .param p4, "state"    # Lcom/android/camera/effect/EffectChooseState;

    .prologue
    .line 185
    iput-object p4, p0, Lcom/android/camera/app/EffectListViewAdapter;->mState:Lcom/android/camera/effect/EffectChooseState;

    .line 187
    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/app/EffectListViewAdapter;->initData(Landroid/content/Context;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mEffectDataList:Ljava/util/List;

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/app/EffectListViewAdapter;->notifyDataSetChanged()V

    .line 190
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$IndicatorBar;->SHOW_EFFECT:Z

    if-eqz v0, :cond_0

    .line 191
    if-eqz p1, :cond_1

    .line 192
    :goto_0
    invoke-static {p1}, Lcom/android/camera/opengl/effect/sticker/util/DefaultFileUtil;->copyPreloadResourceFile(Landroid/content/Context;)V

    .line 193
    sget-object v0, Lcom/android/camera/app/EffectListViewAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "copyPreloadResourceFile done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/android/camera/effect/util/EffectFileUtil;->initFiles(Landroid/content/Context;)V

    .line 197
    :cond_0
    return-void

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/app/EffectListViewAdapter;->onBindViewHolder(Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mEffectDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iput-object v0, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    .line 117
    iget-object v0, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v1, v1, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/app/EffectListViewAdapter;->mState:Lcom/android/camera/effect/EffectChooseState;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v0

    iget-object v1, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v1, v1, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mKey:I

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v1, v1, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mDisableIcon:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    iget-object v1, p1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v1, v1, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mIcon:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    .line 102
    .local v0, "viewHolder":Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    iget-object v2, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    iget-object v2, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    iget-object v3, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v3, v3, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mDisableIcon:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v2, v2, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mKey:I

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/app/EffectListViewAdapter;->mState:Lcom/android/camera/effect/EffectChooseState;

    .line 106
    iget-object v2, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->imageView:Lcom/android/camera/ui/RotateImageView;

    iget-object v3, v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->data:Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;

    iget v3, v3, Lcom/android/camera/app/EffectListViewAdapter$EffectItemData;->mIcon:I

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 109
    .end local v0    # "viewHolder":Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mOnItemClickListener:Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mOnItemClickListener:Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

    iget-object v2, p0, Lcom/android/camera/app/EffectListViewAdapter;->mState:Lcom/android/camera/effect/EffectChooseState;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectChooseState;->getValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;->onClick(I)V

    .line 112
    :cond_2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/app/EffectListViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 87
    iget-object v2, p0, Lcom/android/camera/app/EffectListViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04003c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 88
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    invoke-direct {v0, v1}, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;-><init>(Landroid/view/View;)V

    .line 90
    .local v0, "holder":Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;
    iget-object v2, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/android/camera/app/EffectListViewAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 57
    iput-object v2, p0, Lcom/android/camera/app/EffectListViewAdapter;->mListHolder:Ljava/util/List;

    .line 59
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/camera/app/EffectListViewAdapter;->mOnItemClickListener:Lcom/android/camera/app/EffectListViewAdapter$OnItemClickListener;

    .line 82
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "anim"    # Z

    .prologue
    .line 200
    sput p1, Lcom/android/camera/app/EffectListViewAdapter;->mOrientation:I

    .line 201
    return-void
.end method
