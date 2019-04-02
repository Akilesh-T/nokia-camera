.class public Lcom/android/camera/widget/Preloader;
.super Ljava/lang/Object;
.source "Preloader.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/widget/Preloader$ItemLoader;,
        Lcom/android/camera/widget/Preloader$ItemSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private mItemLoadTokens:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/List",
            "<TY;>;>;"
        }
    .end annotation
.end field

.field private mItemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader$ItemLoader",
            "<TT;TY;>;"
        }
    .end annotation
.end field

.field private mItemSource:Lcom/android/camera/widget/Preloader$ItemSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/widget/Preloader$ItemSource",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mLastEnd:I

.field private mLastStart:I

.field private mLastVisibleItem:I

.field private final mLoadAheadItems:I

.field private final mMaxConcurrentPreloads:I

.field private mScrollingDown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Preloader"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/widget/Preloader;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(ILcom/android/camera/widget/Preloader$ItemSource;Lcom/android/camera/widget/Preloader$ItemLoader;)V
    .locals 1
    .param p1, "loadAheadItems"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/widget/Preloader$ItemSource",
            "<TT;>;",
            "Lcom/android/camera/widget/Preloader$ItemLoader",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    .local p2, "itemSource":Lcom/android/camera/widget/Preloader$ItemSource;, "Lcom/android/camera/widget/Preloader$ItemSource<TT;>;"
    .local p3, "itemLoader":Lcom/android/camera/widget/Preloader$ItemLoader;, "Lcom/android/camera/widget/Preloader$ItemLoader<TT;TY;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/widget/Preloader;->mLastEnd:I

    .line 67
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    .line 73
    iput-object p2, p0, Lcom/android/camera/widget/Preloader;->mItemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    .line 74
    iput-object p3, p0, Lcom/android/camera/widget/Preloader;->mItemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    .line 75
    iput p1, p0, Lcom/android/camera/widget/Preloader;->mLoadAheadItems:I

    .line 77
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/android/camera/widget/Preloader;->mMaxConcurrentPreloads:I

    .line 78
    return-void
.end method

.method private preload(IZ)V
    .locals 6
    .param p1, "first"    # I
    .param p2, "increasing"    # Z

    .prologue
    .line 90
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    if-eqz p2, :cond_0

    .line 91
    iget v3, p0, Lcom/android/camera/widget/Preloader;->mLastEnd:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 92
    .local v2, "start":I
    iget v3, p0, Lcom/android/camera/widget/Preloader;->mLoadAheadItems:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/widget/Preloader;->mItemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    invoke-interface {v4}, Lcom/android/camera/widget/Preloader$ItemSource;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    .local v0, "end":I
    :goto_0
    sget-object v3, Lcom/android/camera/widget/Preloader;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preload first="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " increasing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iput v0, p0, Lcom/android/camera/widget/Preloader;->mLastEnd:I

    .line 102
    iput v2, p0, Lcom/android/camera/widget/Preloader;->mLastStart:I

    .line 104
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 113
    :goto_1
    return-void

    .line 94
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_0
    const/4 v3, 0x0

    iget v4, p0, Lcom/android/camera/widget/Preloader;->mLoadAheadItems:I

    sub-int v4, p1, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 95
    .restart local v2    # "start":I
    iget v3, p0, Lcom/android/camera/widget/Preloader;->mLastStart:I

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "end":I
    goto :goto_0

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/camera/widget/Preloader;->mItemSource:Lcom/android/camera/widget/Preloader$ItemSource;

    invoke-interface {v3, v2, v0}, Lcom/android/camera/widget/Preloader$ItemSource;->getItemsInRange(II)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p2, :cond_2

    .line 110
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/camera/widget/Preloader;->mItemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v3, v1}, Lcom/android/camera/widget/Preloader$ItemLoader;->preloadItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/camera/widget/Preloader;->registerLoadTokens(Ljava/util/List;)V

    goto :goto_1
.end method

.method private registerLoadTokens(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TY;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    .local p1, "loadTokens":Ljava/util/List;, "Ljava/util/List<TY;>;"
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    iget v2, p0, Lcom/android/camera/widget/Preloader;->mMaxConcurrentPreloads:I

    if-le v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 128
    .local v0, "loadTokensToCancel":Ljava/util/List;, "Ljava/util/List<TY;>;"
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v1, v0}, Lcom/android/camera/widget/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    .line 130
    .end local v0    # "loadTokensToCancel":Ljava/util/List;, "Ljava/util/List<TY;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAllLoads()V
    .locals 3

    .prologue
    .line 133
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 134
    .local v0, "loadTokens":Ljava/util/List;, "Ljava/util/List<TY;>;"
    iget-object v2, p0, Lcom/android/camera/widget/Preloader;->mItemLoader:Lcom/android/camera/widget/Preloader$ItemLoader;

    invoke-interface {v2, v0}, Lcom/android/camera/widget/Preloader$ItemLoader;->cancelItems(Ljava/util/List;)V

    goto :goto_0

    .line 136
    .end local v0    # "loadTokens":Ljava/util/List;, "Ljava/util/List<TY;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/camera/widget/Preloader;->mItemLoadTokens:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 137
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 147
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    iget-boolean v1, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    .line 148
    .local v1, "wasScrollingDown":Z
    const/4 v0, -0x1

    .line 149
    .local v0, "preloadStart":I
    iget v2, p0, Lcom/android/camera/widget/Preloader;->mLastVisibleItem:I

    if-le p2, v2, :cond_3

    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    .line 152
    add-int v0, p2, p3

    .line 159
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    if-eq v1, v2, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/android/camera/widget/Preloader;->cancelAllLoads()V

    .line 167
    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 168
    iget-boolean v2, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    invoke-direct {p0, v0, v2}, Lcom/android/camera/widget/Preloader;->preload(IZ)V

    .line 171
    :cond_2
    iput p2, p0, Lcom/android/camera/widget/Preloader;->mLastVisibleItem:I

    .line 172
    return-void

    .line 153
    :cond_3
    iget v2, p0, Lcom/android/camera/widget/Preloader;->mLastVisibleItem:I

    if-ge p2, v2, :cond_0

    .line 155
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/widget/Preloader;->mScrollingDown:Z

    .line 156
    move v0, p2

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 142
    .local p0, "this":Lcom/android/camera/widget/Preloader;, "Lcom/android/camera/widget/Preloader<TT;TY;>;"
    return-void
.end method
