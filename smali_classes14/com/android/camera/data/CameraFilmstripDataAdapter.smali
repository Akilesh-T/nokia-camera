.class public Lcom/android/camera/data/CameraFilmstripDataAdapter;
.super Ljava/lang/Object;
.source "CameraFilmstripDataAdapter.java"

# interfaces
.implements Lcom/android/camera/data/LocalFilmstripDataAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTaskResult;,
        Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_DECODE_SIZE:I = 0x640

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

.field private mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

.field private mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

.field private mLastMediaId:J

.field private mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

.field private final mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

.field private mSuggestedHeight:I

.field private mSuggestedWidth:I

.field private final mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CameraDataAdapter"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/PhotoItemFactory;Lcom/android/camera/data/VideoItemFactory;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "photoItemFactory"    # Lcom/android/camera/data/PhotoItemFactory;
    .param p3, "videoItemFactory"    # Lcom/android/camera/data/VideoItemFactory;

    .prologue
    const/16 v0, 0x640

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedWidth:I

    .line 56
    iput v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedHeight:I

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    .line 63
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mContext:Landroid/content/Context;

    .line 64
    new-instance v0, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 65
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    .line 66
    iput-object p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    .line 67
    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mPhotoItemFactory:Lcom/android/camera/data/PhotoItemFactory;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mVideoItemFactory:Lcom/android/camera/data/VideoItemFactory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/FilmstripItemList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;
    .param p1, "x1"    # Lcom/android/camera/data/FilmstripItemList;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/FilmstripItemList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    return-object v0
.end method

.method private insertItem(Lcom/android/camera/data/FilmstripItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 275
    const/4 v1, 0x0

    .line 276
    .local v1, "pos":I
    new-instance v0, Lcom/android/camera/data/NewestFirstComparator;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v2}, Lcom/android/camera/data/NewestFirstComparator;-><init>(Ljava/util/Date;)V

    .line 279
    .local v0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/camera/data/FilmstripItem;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 278
    invoke-virtual {v2}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 279
    invoke-virtual {v2, v1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v2, v1, p1}, Lcom/android/camera/data/FilmstripItemList;->add(ILcom/android/camera/data/FilmstripItem;)V

    .line 282
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v2, :cond_1

    .line 283
    iget-object v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v2, v1, p1}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemInserted(ILcom/android/camera/data/FilmstripItem;)V

    .line 285
    :cond_1
    return-void
.end method

.method private replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V
    .locals 1
    .param p1, "list"    # Lcom/android/camera/data/FilmstripItemList;

    .prologue
    .line 289
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    .line 293
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemLoaded()V

    goto :goto_0
.end method

.method private updateMetadataAt(IZ)Landroid/os/AsyncTask;
    .locals 5
    .param p1, "index"    # I
    .param p2, "forceItemUpdate"    # Z

    .prologue
    .line 92
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Z)V

    .line 93
    .local v0, "result":Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter$MetadataUpdateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    return-object v0
.end method


# virtual methods
.method public addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 186
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 187
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 189
    sget-object v4, Lcom/android/camera/data/CameraFilmstripDataAdapter;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found duplicate data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    .line 207
    :goto_0
    return v3

    .line 197
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 198
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v4, v3}, Lcom/android/camera/data/FilmstripItemList;->remove(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 199
    .local v0, "d":Lcom/android/camera/data/FilmstripItem;
    if-eqz v0, :cond_0

    .line 200
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v4, :cond_0

    .line 201
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v4, v3, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_1

    .line 205
    .end local v0    # "d":Lcom/android/camera/data/FilmstripItem;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->insertItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 207
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancelItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, "loadTokens":Ljava/util/List;, "Ljava/util/List<Landroid/os/AsyncTask;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 312
    .local v0, "asyncTask":Landroid/os/AsyncTask;
    if-eqz v0, :cond_0

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 316
    .end local v0    # "asyncTask":Landroid/os/AsyncTask;
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v0}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->replaceItemList(Lcom/android/camera/data/FilmstripItemList;)V

    .line 245
    return-void
.end method

.method public executeDeletion()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 232
    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    if-nez v3, :cond_0

    .line 239
    :goto_0
    return v1

    .line 236
    :cond_0
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;

    invoke-direct {v0, p0, v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/data/CameraFilmstripDataAdapter$1;)V

    .line 237
    .local v0, "task":Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;
    new-array v3, v2, [Lcom/android/camera/data/FilmstripItem;

    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter$DeletionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 238
    iput-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    move v1, v2

    .line 239
    goto :goto_0
.end method

.method public findByContentUri(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->indexOf(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->getTotalNumber()I

    move-result v0

    return v0
.end method

.method public getFilmstripItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->getItemAt(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 107
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, -0x1

    .line 111
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getItemViewType()Lcom/android/camera/data/FilmstripItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemType;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public getItemsInRange(II)Ljava/util/List;
    .locals 3
    .param p1, "startPosition"    # I
    .param p2, "endPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 322
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-object v1
.end method

.method public getTotalNumber()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    return v0
.end method

.method public getView(Landroid/view/View;ILcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;
    .locals 3
    .param p1, "recycled"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "videoClickedCallback"    # Lcom/android/camera/data/FilmstripItem$VideoClickedCallback;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    if-gez p2, :cond_1

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 148
    :goto_0
    return-object v1

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1, p2}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 146
    .local v0, "item":Lcom/android/camera/data/FilmstripItem;
    iget v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedWidth:I

    iget v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/data/FilmstripItem;->setSuggestedSize(II)V

    .line 148
    invoke-static {p1}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2, p3}, Lcom/android/camera/data/FilmstripItem;->getView(Lcom/google/common/base/Optional;Lcom/android/camera/data/LocalFilmstripDataAdapter;ZLcom/android/camera/data/FilmstripItem$VideoClickedCallback;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public isMetadataUpdatedAt(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 99
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 100
    :cond_0
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getMetadata()Lcom/android/camera/data/Metadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/Metadata;->isLoaded()Z

    move-result v0

    goto :goto_0
.end method

.method public preloadItems(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/AsyncTask;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 302
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->isMetadataUpdatedAt(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(I)Landroid/os/AsyncTask;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method public refresh(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->findByContentUri(Landroid/net/Uri;)I

    move-result v1

    .line 250
    .local v1, "pos":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 263
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v3, v1}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 255
    .local v0, "data":Lcom/android/camera/data/FilmstripItem;
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->refresh()Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 258
    .local v2, "refreshedData":Lcom/android/camera/data/FilmstripItem;
    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v3, v1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateItemAt(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/FilmstripItemList;->remove(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v0

    .line 163
    .local v0, "d":Lcom/android/camera/data/FilmstripItem;
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 168
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    .line 177
    :cond_1
    iput-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 178
    invoke-virtual {p0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->executeDeletion()Z

    .line 180
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemRemoved(ILcom/android/camera/data/FilmstripItem;)V

    goto :goto_0
.end method

.method public requestLoad(Lcom/android/camera/util/Callback;ZJ)V
    .locals 7
    .param p2, "isSecure"    # Z
    .param p3, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "onDone":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    new-instance v0, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Lcom/android/camera/util/Callback;ZJ)V

    .line 83
    .local v0, "qtask":Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public requestLoadNewMidia(Lcom/android/camera/util/Callback;ZJ)V
    .locals 11
    .param p2, "isSecure"    # Z
    .param p3, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "onDone":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    new-instance v1, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mLastMediaId:J

    move-object v2, p0

    move-object v6, p1

    move v7, p2

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;-><init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Landroid/content/Context;JLcom/android/camera/util/Callback;ZJ)V

    .line 77
    .local v1, "ltask":Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/content/ContentResolver;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public setListener(Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    .line 155
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mListener:Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;

    invoke-interface {v0}, Lcom/android/camera/filmstrip/FilmstripDataAdapter$Listener;->onFilmstripItemLoaded()V

    .line 158
    :cond_0
    return-void
.end method

.method public setLocalDataListener(Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemListener:Lcom/android/camera/data/LocalFilmstripDataAdapter$FilmstripItemListener;

    .line 72
    return-void
.end method

.method public suggestViewSizeBound(II)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedWidth:I

    .line 135
    iput p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mSuggestedHeight:I

    .line 136
    return-void
.end method

.method public undoDeletion()Z
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    if-nez v1, :cond_0

    .line 222
    const/4 v1, 0x0

    .line 227
    :goto_0
    return v1

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 225
    .local v0, "d":Lcom/android/camera/data/FilmstripItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItemToDelete:Lcom/android/camera/data/FilmstripItem;

    .line 226
    invoke-direct {p0, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->insertItem(Lcom/android/camera/data/FilmstripItem;)V

    .line 227
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public updateItemAt(ILcom/android/camera/data/FilmstripItem;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "item"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter;->mFilmstripItems:Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/data/FilmstripItemList;->set(ILcom/android/camera/data/FilmstripItem;)V

    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(IZ)Landroid/os/AsyncTask;

    .line 269
    return-void
.end method

.method public updateMetadataAt(I)Landroid/os/AsyncTask;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->updateMetadataAt(IZ)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
