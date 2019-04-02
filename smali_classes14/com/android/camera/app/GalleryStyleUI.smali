.class public Lcom/android/camera/app/GalleryStyleUI;
.super Landroid/widget/LinearLayout;
.source "GalleryStyleUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;,
        Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;,
        Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;,
        Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/camera/app/AppController;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mOnCellClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

.field private mOnCellLongClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

.field private mOnUnloadIconClickListener:Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Effect.UI"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/GalleryStyleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    .line 37
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellLongClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    .line 38
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnUnloadIconClickListener:Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    .line 41
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    .line 37
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellLongClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    .line 38
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnUnloadIconClickListener:Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    .line 46
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/android/camera/app/GalleryStyleUI;->initData()V

    .line 48
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/app/GalleryStyleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/app/GalleryStyleUI;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/GalleryStyleUI;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellLongClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/app/GalleryStyleUI;)Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnUnloadIconClickListener:Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    return-object v0
.end method

.method private checkSelectedUpdate(I)V
    .locals 7
    .param p1, "effectCategory"    # I

    .prologue
    const v6, 0x7f080085

    const/4 v5, 0x0

    .line 321
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 325
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v1}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mStickerUpdateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v1}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/app/GalleryStyleUI;->setDownLoadStatus(Ljava/lang/String;I)V

    .line 330
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    .line 331
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/effect/util/EffectUtil;->getSettingEffectKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0803d4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_1
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mStickerUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 336
    sget-boolean v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->STICKER_THEME_RESOURCE_UPDATE:Z

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 339
    :cond_2
    sput-boolean v5, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->STICKER_THEME_RESOURCE_UPDATE:Z

    .line 357
    :cond_3
    :goto_0
    return-void

    .line 340
    :cond_4
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 342
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v1}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 343
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mAnimojiUpdateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v2}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 344
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v1}, Lcom/android/camera/app/GalleryStyleAdapter;->getCurrentValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/camera/app/GalleryStyleUI;->setDownLoadStatus(Ljava/lang/String;I)V

    .line 345
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    .line 346
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/camera/effect/util/EffectUtil;->getSettingEffectKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080362

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 345
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_5
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->mAnimojiUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 351
    sget-boolean v1, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->ANIMOJI_RESOURCE_UPDATE:Z

    if-eqz v1, :cond_6

    .line 352
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 354
    :cond_6
    sput-boolean v5, Lcom/android/camera/effect/util/EffectConstant$EffectResourcesUpdate;->ANIMOJI_RESOURCE_UPDATE:Z

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    new-instance v0, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;

    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/android/camera/app/GalleryStyleUI$SmoothScrollLayoutManager;-><init>(Lcom/android/camera/app/GalleryStyleUI;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 145
    new-instance v0, Lcom/android/camera/app/GalleryStyleAdapter;

    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/camera/app/GalleryStyleAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/app/GalleryStyleUI;)V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    .line 146
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    new-instance v1, Lcom/android/camera/app/GalleryStyleUI$1;

    invoke-direct {v1, p0}, Lcom/android/camera/app/GalleryStyleUI$1;-><init>(Lcom/android/camera/app/GalleryStyleUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->setOnItemClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    new-instance v1, Lcom/android/camera/app/GalleryStyleUI$2;

    invoke-direct {v1, p0}, Lcom/android/camera/app/GalleryStyleUI$2;-><init>(Lcom/android/camera/app/GalleryStyleUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->setOnItemLongClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    new-instance v1, Lcom/android/camera/app/GalleryStyleUI$3;

    invoke-direct {v1, p0}, Lcom/android/camera/app/GalleryStyleUI$3;-><init>(Lcom/android/camera/app/GalleryStyleUI;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->setOnDeleteIconClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;)V

    .line 220
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 223
    const v1, 0x7f0f0210

    invoke-virtual {p0, v1}, Lcom/android/camera/app/GalleryStyleUI;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 225
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleUI;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 227
    new-instance v0, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    .line 229
    .local v0, "recycledViewPool":Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 231
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 233
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 234
    return-void
.end method


# virtual methods
.method public changeDataKey(ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # I
    .param p2, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter;->updateData(ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public clearEffectContentBackground(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->updateCurrentData(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public getAppController()Lcom/android/camera/app/AppController;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method public getDownloadStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->getDownloadStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public init(Lcom/android/camera/app/AppController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mController:Lcom/android/camera/app/AppController;

    .line 52
    return-void
.end method

.method public isUnloadMode()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 75
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public onBeautyDownEvent(Lcom/android/camera/effect/download/BeautyDownEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/camera/effect/download/BeautyDownEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 92
    :cond_0
    sget-object v0, Lcom/android/camera/app/GalleryStyleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GalleryStyleUI->onBeautyDownEvent receive null event, warning!!!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 95
    :cond_2
    sget-object v0, Lcom/android/camera/app/GalleryStyleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event.title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " event.downloadFile= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->downloadFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 97
    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    const-string v1, "STICKER_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    iget v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    iget-object v3, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->downloadFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/app/GalleryStyleAdapter;->downloadStateChange(IILjava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    const-string v1, "THEME_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    iget v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    iget-object v3, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->downloadFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/app/GalleryStyleAdapter;->downloadStateChange(IILjava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    const-string v1, "ANIMOJI_DOWNLOAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    iget v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    iget-object v3, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->downloadFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/app/GalleryStyleAdapter;->downloadStateChange(IILjava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_5
    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    const-string v1, "notify_ui_sticker_json_download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    if-eq v0, v3, :cond_6

    iget v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 111
    :cond_6
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->initSticker(I)V

    .line 114
    sget-object v0, Lcom/android/camera/app/GalleryStyleUI;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GalleryStyleUI->onBeautyDownEvent(sticker)->category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v2, v2, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v0, v0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 117
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->updataData(I)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 124
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v0, v0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-direct {p0, v0}, Lcom/android/camera/app/GalleryStyleUI;->checkSelectedUpdate(I)V

    goto/16 :goto_0

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v0, v0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 120
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->updataData(I)V

    .line 121
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 128
    :cond_9
    iget-object v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    const-string v1, "notify_ui_animoji_json_download"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->status:I

    if-ne v0, v3, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->initAnimoji(I)V

    .line 133
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v0, v0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 134
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->updataData(I)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 137
    :cond_a
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    iget v0, v0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-direct {p0, v0}, Lcom/android/camera/app/GalleryStyleUI;->checkSelectedUpdate(I)V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 69
    invoke-direct {p0}, Lcom/android/camera/app/GalleryStyleUI;->initView()V

    .line 70
    return-void
.end method

.method public quitUnloadMode()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0}, Lcom/android/camera/app/GalleryStyleAdapter;->quitUnloadMode()V

    .line 315
    return-void
.end method

.method public removeItemByPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->removeItemByPosition(I)V

    .line 312
    return-void
.end method

.method public setDownLoadStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter;->setDownLoadStatus(Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method public setOnCellClickListener(Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferClickListener;

    .line 266
    return-void
.end method

.method public setOnCellLongClickListener(Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnCellLongClickListener:Lcom/android/camera/app/GalleryStyleUI$OnStyleTransferLongClickListener;

    .line 284
    return-void
.end method

.method public setOnDeleteIconClickListener(Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleUI;->mOnUnloadIconClickListener:Lcom/android/camera/app/GalleryStyleUI$OnUnloadIconClickListener;

    .line 291
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    const/4 v5, 0x1

    .line 301
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleUI;->mAdapter:Lcom/android/camera/app/GalleryStyleAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter;->setOrientation(IZ)V

    .line 303
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 304
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleUI;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    .line 305
    .local v1, "holder":Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    iget-object v3, v1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 306
    iget-object v3, v1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, p1, v5}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v1    # "holder":Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    :cond_0
    return-void
.end method
