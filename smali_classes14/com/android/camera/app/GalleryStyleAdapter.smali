.class public Lcom/android/camera/app/GalleryStyleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "GalleryStyleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;,
        Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;,
        Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;,
        Lcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;,
        Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;,
        Lcom/android/camera/app/GalleryStyleAdapter$RoundCornersTransformation;,
        Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;,
        Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;,
        Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;,
        Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private isCloudResource:Z

.field private isFocus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isUnloadMode:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:Ljava/lang/String;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;",
            ">;"
        }
    .end annotation
.end field

.field public mEffectCategory:I

.field private mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHashMapDownLoadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDeleteIconClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;

.field private mOnItemClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

.field private mOrientation:I

.field private mPositionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUnloadKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Effect.Adapter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/app/GalleryStyleUI;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "galleryStyleUI"    # Lcom/android/camera/app/GalleryStyleUI;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

    .line 66
    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemLongClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isFocus:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mUnloadKey:Ljava/util/ArrayList;

    .line 78
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    .line 80
    sget-object v0, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "GalleryStyleAdapter"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mUnloadKey:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/app/GalleryStyleAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/app/GalleryStyleAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOrientation:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/app/GalleryStyleAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/app/GalleryStyleAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/app/GalleryStyleAdapter;)Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/app/GalleryStyleAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnDeleteIconClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;

    return-object v0
.end method

.method private checkExistUnloadKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 797
    if-nez p1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mUnloadKey:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mUnloadKey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 802
    .local v0, "size":I
    sget-object v1, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUnloadKey.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 803
    if-gtz v0, :cond_0

    .line 804
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    .line 805
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private getDrawableId(Ljava/lang/String;)I
    .locals 5
    .param p1, "drawableName"    # Ljava/lang/String;

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 105
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, "resID":I
    return v1
.end method

.method private initData(I)V
    .locals 4
    .param p1, "key"    # I

    .prologue
    .line 531
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 532
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/camera/opengl/effect/EffectMode;->fromValue(I)Lcom/android/camera/opengl/effect/EffectMode;

    move-result-object v0

    .line 533
    .local v0, "effectMode":Lcom/android/camera/opengl/effect/EffectMode;
    sget-object v2, Lcom/android/camera/app/GalleryStyleAdapter$2;->$SwitchMap$com$android$camera$opengl$effect$EffectMode:[I

    invoke-virtual {v0}, Lcom/android/camera/opengl/effect/EffectMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 546
    :goto_0
    :pswitch_0
    return-void

    .line 537
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->initSticker(I)V

    goto :goto_0

    .line 540
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->initAnimoji(I)V

    goto :goto_0

    .line 543
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->initLightening(I)V

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private notifyLogicStickerAndTheme(II)Z
    .locals 2
    .param p1, "currentCategory"    # I
    .param p2, "downloadedCategory"    # I

    .prologue
    const/4 v0, 0x1

    .line 750
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne p2, v1, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v0

    .line 753
    :cond_1
    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-object v1, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v1

    if-eq p2, v1, :cond_0

    .line 756
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isFocus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 427
    return-void
.end method

.method public downloadStateChange(IILjava/lang/String;)V
    .locals 7
    .param p1, "category"    # I
    .param p2, "status"    # I
    .param p3, "keyzip"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 704
    const/4 v0, 0x0

    .line 705
    .local v0, "key":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_STICKER:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v2

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_3

    .line 706
    :cond_0
    const-string v2, "."

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 711
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadStateChange status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    packed-switch p2, :pswitch_data_0

    .line 747
    :cond_2
    return-void

    .line 707
    :cond_3
    sget-object v2, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_ANIMOJI:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 708
    move-object v0, p3

    goto :goto_0

    .line 714
    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    if-eq v2, p1, :cond_4

    iget v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyLogicStickerAndTheme(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 718
    :cond_4
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 719
    .local v1, "mKey":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 720
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 721
    sget-object v2, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "isCloudResource"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isCloudResource:Z

    .line 723
    iput-boolean v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    .line 724
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 731
    .end local v1    # "mKey":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    if-eq v2, p1, :cond_6

    iget v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-direct {p0, v2, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyLogicStickerAndTheme(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 734
    :cond_6
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 735
    .restart local v1    # "mKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 736
    iget-object v2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyItemChanged(I)V

    goto :goto_2

    .line 712
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEffectCategory()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    return v0
.end method

.method public getIsFocus(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isFocus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getmData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public initAnimoji(I)V
    .locals 10
    .param p1, "effectCategory"    # I

    .prologue
    .line 616
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "initAnimoji"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v1, "animojiItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_animoji_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 620
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "isFileExist !!!"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "merge_animoji_data.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "jsonString":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsonString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    if-eqz v3, :cond_2

    .line 624
    invoke-static {v3}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 625
    .local v0, "animojiDataInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    if-eqz v0, :cond_2

    .line 626
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animojiDataInfoArrayList = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 628
    .local v2, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    const/4 v4, 0x0

    .line 630
    .local v4, "state":I
    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v6

    const-string v7, "preload"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 631
    const/4 v4, -0x1

    .line 635
    :cond_0
    :goto_1
    sget-object v6, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initAnimoji key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",initAnimoji state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 636
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9, v2}, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/util/EffectDataInfo;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v6, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animojiItemList = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/effect/download/DownLoaderManager;->isNeedDownloadAnimojiAgain(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 633
    const/4 v4, 0x2

    goto :goto_1

    .line 644
    .end local v0    # "animojiDataInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    .end local v2    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v3    # "jsonString":Ljava/lang/String;
    .end local v4    # "state":I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-void
.end method

.method public initLightening(I)V
    .locals 10
    .param p1, "effectCategory"    # I

    .prologue
    .line 659
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v3, "stickerItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;>;"
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00b2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "key":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d00b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 662
    .local v5, "value":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00b3

    invoke-static {v6, v7}, Lcom/android/camera/util/CameraUtil;->getIconResourceArrayId(Landroid/content/Context;I)[I

    move-result-object v1

    .line 664
    .local v1, "icons":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 665
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    aget-object v7, v2, v0

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v6, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "icons:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v1, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v1, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 668
    .local v4, "str":Ljava/lang/String;
    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    aget-object v7, v2, v0

    aget-object v8, v5, v0

    new-instance v9, Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-direct {v9}, Lcom/android/camera/effect/util/EffectDataInfo;-><init>()V

    invoke-direct {v6, v7, v8, v4, v9}, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/util/EffectDataInfo;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 672
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void
.end method

.method public initSticker(I)V
    .locals 11
    .param p1, "effectCategory"    # I

    .prologue
    .line 565
    sget-object v7, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "initSticker"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v6, "stickerItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "merge_sticker_data.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 570
    sget-object v7, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "isFileExist !!!"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 571
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sConfigureFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "merge_sticker_data.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/effect/util/EffectFileUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "jsonString":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "jsonString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 573
    if-eqz v2, :cond_2

    .line 574
    invoke-static {v2}, Lcom/android/camera/effect/util/EffectGsonTool;->fromJsonArrayEffectDI(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 575
    .local v5, "stickDataInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    if-eqz v5, :cond_2

    .line 576
    sget-object v7, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "stickDataInfoArrayList = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/util/EffectDataInfo;

    .line 578
    .local v1, "info":Lcom/android/camera/effect/util/EffectDataInfo;
    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "from":Ljava/lang/String;
    const/4 v4, 0x0

    .line 583
    .local v4, "state":I
    const-string v8, "preload"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 584
    const/4 v4, -0x1

    .line 588
    :cond_0
    :goto_1
    sget-object v8, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initSticker key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",initSticker state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object v8, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    new-instance v8, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-virtual {v1}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v3, v3, v9, v1}, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/effect/util/EffectDataInfo;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v8, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stickerItemList = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {v3}, Lcom/android/camera/effect/download/DownLoaderManager;->isNeedDownloadResourceZipAgain(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 586
    const/4 v4, 0x2

    goto :goto_1

    .line 600
    .end local v0    # "from":Ljava/lang/String;
    .end local v1    # "info":Lcom/android/camera/effect/util/EffectDataInfo;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "state":I
    .end local v5    # "stickDataInfoArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/effect/util/EffectDataInfo;>;"
    :cond_2
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    sget-object v8, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_THEME:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v8}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method public intoUnloadMode()V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    .line 783
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 784
    return-void
.end method

.method public isUnloadMode()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    return v0
.end method

.method public onBeautyDownEvent(Lcom/android/camera/effect/download/BeautyDownEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/camera/effect/download/BeautyDownEvent;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 692
    if-eqz p1, :cond_0

    .line 693
    sget-object v0, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/effect/download/BeautyDownEvent;->titleChinese:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 695
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter;->onBindViewHolder(Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 57
    check-cast p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/app/GalleryStyleAdapter;->onBindViewHolder(Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;I)V
    .locals 13
    .param p1, "holder"    # Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/16 v5, 0x8

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 137
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 139
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLoadingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 140
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 141
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDeleteIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 142
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, v12}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    .line 143
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    iget v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOrientation:I

    invoke-virtual {v4, v5, v9}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 144
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mDownloadIcon:Lcom/android/camera/ui/RotateImageView;

    iget v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOrientation:I

    invoke-virtual {v4, v5, v9}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 146
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/effect/util/EffectConstant$EffectDownloadPath;->sStickerDownloadPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectDataInfo;->getFrom()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v4, "cloud"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    invoke-virtual {p1, v10}, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->setVisibility(Z)V

    .line 150
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 151
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconCheckSum()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mEffectDataInfo:Lcom/android/camera/effect/util/EffectDataInfo;

    invoke-virtual {v4}, Lcom/android/camera/effect/util/EffectDataInfo;->getIconCheckSum()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "iconCheckSum":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    new-instance v5, Lcom/bumptech/glide/signature/StringSignature;

    invoke-direct {v5, v1}, Lcom/bumptech/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->signature(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v5, v9, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;

    invoke-direct {v8, p0}, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;)V

    invoke-direct {v6, p0, v7, v11, v8}, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/content/Context;FLcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;)V

    aput-object v6, v5, v10

    .line 155
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 156
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-instance v5, Lcom/android/camera/app/GalleryStyleAdapter$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter$1;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;I)V

    .line 158
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    .line 208
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 251
    .end local v1    # "iconCheckSum":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    iget-object v5, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    invoke-direct {v6, v4, p2}, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;-><init>(Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 253
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v2, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 254
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 255
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    :cond_0
    iget-boolean v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isCloudResource:Z

    if-nez v4, :cond_5

    .line 259
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 273
    :goto_2
    return-void

    .line 152
    .end local v2    # "key":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 212
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1, v9}, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->setVisibility(Z)V

    .line 213
    iget v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    sget-object v5, Lcom/android/camera/effect/util/EffectConstant$EffectType;->CATEGORY_LIGHTING:Lcom/android/camera/effect/util/EffectConstant$EffectType;

    invoke-virtual {v5}, Lcom/android/camera/effect/util/EffectConstant$EffectType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 216
    sget-object v5, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mData.get(position).mIcon):"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 219
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v5, v9, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;

    invoke-direct {v8, p0}, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;)V

    invoke-direct {v6, p0, v7, v11, v8}, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/content/Context;FLcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;)V

    aput-object v6, v5, v10

    .line 221
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    .line 222
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    .line 231
    :goto_3
    iget-boolean v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    if-eqz v4, :cond_4

    .line 232
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    const v5, 0x3ee66666    # 0.45f

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 224
    :cond_3
    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v5

    iget-object v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v4, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mIcon:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/camera/app/GalleryStyleAdapter;->getDrawableId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v4

    sget-object v5, Lcom/bumptech/glide/Priority;->HIGH:Lcom/bumptech/glide/Priority;

    .line 226
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableTypeRequest;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    new-array v5, v9, [Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    new-instance v6, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;

    iget-object v7, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;

    invoke-direct {v8, p0}, Lcom/android/camera/app/GalleryStyleAdapter$DrawTopCornerImage;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;)V

    invoke-direct {v6, p0, v7, v11, v8}, Lcom/android/camera/app/GalleryStyleAdapter$BitmapRoundCornersTransformation;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/content/Context;FLcom/android/camera/app/GalleryStyleAdapter$DrawCornerImage;)V

    aput-object v6, v5, v10

    .line 228
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->transform([Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    .line 229
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_3

    .line 234
    :cond_4
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mIv:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v4, v12}, Lcom/android/camera/ui/RotateImageView;->setAlpha(F)V

    goto/16 :goto_1

    .line 261
    .restart local v2    # "key":Ljava/lang/String;
    :cond_5
    iget-object v4, p1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;->mLinearLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 262
    iput-boolean v10, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isCloudResource:Z

    goto/16 :goto_2
.end method

.method public onBindViewHolder(Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;ILjava/util/List;)V
    .locals 0
    .param p1, "holder"    # Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p3, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 700
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 354
    iget-boolean v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    if-eqz v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

    if-eqz v3, :cond_0

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget v2, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mPosition:I

    .line 359
    .local v2, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget-object v3, v3, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v1, v3, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 364
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 365
    :cond_2
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/camera/livebroadcast/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 366
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mGalleryStyleUI:Lcom/android/camera/app/GalleryStyleUI;

    invoke-virtual {v3}, Lcom/android/camera/app/GalleryStyleUI;->getAppController()Lcom/android/camera/app/AppController;

    move-result-object v0

    .line 367
    .local v0, "controller":Lcom/android/camera/app/AppController;
    if-eqz v0, :cond_3

    .line 368
    new-instance v3, Lcom/android/camera/ui/RotateTextToast;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getActivity()Lcom/android/camera/CameraActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f08007b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 369
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0

    .line 373
    .end local v0    # "controller":Lcom/android/camera/app/AppController;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-virtual {p0, v2}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyItemChanged(I)V

    .line 375
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mPositionList:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v3, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "OnClick_DownLoadStatus set = 1"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 383
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

    iget v4, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    invoke-interface {v3, p1, v2, v4, v1}, Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :cond_5
    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 378
    :cond_6
    iput-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    .line 379
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/app/GalleryStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040090

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 114
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;-><init>(Lcom/android/camera/app/GalleryStyleAdapter;Landroid/view/View;)V

    .line 115
    .local v1, "viewHolder":Lcom/android/camera/app/GalleryStyleAdapter$ViewHolder;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 117
    return-object v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemLongClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget v2, v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mPosition:I

    .line 395
    .local v2, "position":I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;

    iget-object v0, v0, Lcom/android/camera/app/GalleryStyleAdapter$ViewItemData;->mGalleryStyleItemData:Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v4, v0, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 399
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/camera/app/GalleryStyleAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnClickLong key = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->intoUnloadMode()V

    .line 402
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemLongClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

    iget v3, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    iget-object v5, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;->onItemLongClick(Landroid/view/View;IILjava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v2    # "position":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public quitUnloadMode()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mUnloadKey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 778
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isUnloadMode:Z

    .line 779
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 780
    return-void
.end method

.method public removeItemByPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;

    iget-object v0, v1, Lcom/android/camera/app/GalleryStyleAdapter$GalleryStyleItemData;->mKey:Ljava/lang/String;

    .line 790
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyItemRemoved(I)V

    .line 792
    iget-object v1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyItemRangeChanged(II)V

    .line 793
    invoke-direct {p0, v0}, Lcom/android/camera/app/GalleryStyleAdapter;->checkExistUnloadKey(Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public setDownLoadStatus(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 764
    if-eqz p1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMapDownLoadStatus:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 767
    invoke-direct {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->checkExistUnloadKey(Ljava/lang/String;)V

    .line 769
    :cond_0
    return-void
.end method

.method public setIsSelected(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "isinFocus"    # Z

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->isFocus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 419
    return-void
.end method

.method public setOnDeleteIconClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnDeleteIconClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnDeleteIconClickListener;

    .line 286
    return-void
.end method

.method public setOnItemClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemClickListener;

    .line 389
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOnItemLongClickListener:Lcom/android/camera/app/GalleryStyleAdapter$OnItemLongClickListener;

    .line 414
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 773
    iput p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mOrientation:I

    .line 774
    return-void
.end method

.method public updataData(I)V
    .locals 2
    .param p1, "effectCategory"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    .line 550
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 551
    return-void
.end method

.method public updateCurrentData(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public updateData(ILjava/lang/String;)V
    .locals 2
    .param p1, "effectCategory"    # I
    .param p2, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/camera/app/GalleryStyleAdapter;->initData(I)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mData:Ljava/util/ArrayList;

    .line 89
    iput p1, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mEffectCategory:I

    .line 90
    iput-object p2, p0, Lcom/android/camera/app/GalleryStyleAdapter;->mCurrentValue:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/app/GalleryStyleAdapter;->notifyDataSetChanged()V

    .line 92
    return-void
.end method
