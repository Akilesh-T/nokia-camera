.class Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;
.super Landroid/os/AsyncTask;
.source "CameraFilmstripDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/CameraFilmstripDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNewMediaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Lcom/android/camera/data/FilmstripItemList;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_METADATA:I = 0x5


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDoneCallback:Lcom/android/camera/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsSecure:Z

.field private final mMinMediaId:J

.field private final mOnCreateTime:J

.field final synthetic this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/CameraFilmstripDataAdapter;Landroid/content/Context;JLcom/android/camera/util/Callback;ZJ)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lastMediaId"    # J
    .param p6, "isSecure"    # Z
    .param p7, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Lcom/android/camera/util/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p5, "onDone":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<Ljava/lang/Void;>;"
    iput-object p1, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 342
    iput-object p2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mContext:Landroid/content/Context;

    .line 343
    iput-wide p3, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    .line 344
    iput-object p5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    .line 345
    iput-boolean p6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mIsSecure:Z

    .line 346
    iput-wide p7, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mOnCreateTime:J

    .line 347
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/FilmstripItemList;
    .locals 13
    .param p1, "contentResolvers"    # [Landroid/content/ContentResolver;

    .prologue
    .line 356
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadNewMediaTask : mMinMediaId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsSecure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mIsSecure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 357
    iget-wide v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mIsSecure:Z

    if-eqz v0, :cond_3

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating media metadata with photos newer than id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    aget-object v7, p1, v0

    .line 361
    .local v7, "cr":Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v10}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    .line 362
    .local v10, "newMediaList":Lcom/android/camera/data/FilmstripItemList;
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$200(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/PhotoItemFactory;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    iget-boolean v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mIsSecure:Z

    iget-wide v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mOnCreateTime:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v11

    .line 363
    .local v11, "newPhotoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/PhotoItem;>;"
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v0}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$300(Lcom/android/camera/data/CameraFilmstripDataAdapter;)Lcom/android/camera/data/VideoItemFactory;

    move-result-object v0

    sget-object v1, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mMinMediaId:J

    iget-boolean v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mIsSecure:Z

    iget-wide v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mOnCreateTime:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/VideoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v12

    .line 365
    .local v12, "newVideoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/VideoItem;>;"
    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 366
    invoke-virtual {v10, v11}, Lcom/android/camera/data/FilmstripItemList;->addAll(Ljava/util/List;)V

    .line 368
    :cond_1
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 369
    invoke-virtual {v10, v12}, Lcom/android/camera/data/FilmstripItemList;->addAll(Ljava/util/List;)V

    .line 372
    :cond_2
    new-instance v0, Lcom/android/camera/data/NewestFirstComparator;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/camera/data/NewestFirstComparator;-><init>(Ljava/util/Date;)V

    invoke-virtual {v10, v0}, Lcom/android/camera/data/FilmstripItemList;->sort(Ljava/util/Comparator;)V

    .line 375
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v0, 0x5

    if-ge v9, v0, :cond_4

    invoke-virtual {v10}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 376
    invoke-virtual {v10, v9}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v8

    .line 377
    .local v8, "data":Lcom/android/camera/data/FilmstripItem;
    iget-object v0, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/android/camera/data/MetadataLoader;->loadMetadata(Landroid/content/Context;Lcom/android/camera/data/FilmstripItem;)Z

    .line 375
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 382
    .end local v7    # "cr":Landroid/content/ContentResolver;
    .end local v8    # "data":Lcom/android/camera/data/FilmstripItem;
    .end local v9    # "i":I
    .end local v10    # "newMediaList":Lcom/android/camera/data/FilmstripItemList;
    .end local v11    # "newPhotoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/PhotoItem;>;"
    .end local v12    # "newVideoData":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/VideoItem;>;"
    :cond_3
    new-instance v10, Lcom/android/camera/data/FilmstripItemList;

    invoke-direct {v10}, Lcom/android/camera/data/FilmstripItemList;-><init>()V

    :cond_4
    return-object v10
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    check-cast p1, [Landroid/content/ContentResolver;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->doInBackground([Landroid/content/ContentResolver;)Lcom/android/camera/data/FilmstripItemList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/camera/data/FilmstripItemList;)V
    .locals 8
    .param p1, "newMediaData"    # Lcom/android/camera/data/FilmstripItemList;

    .prologue
    .line 387
    if-nez p1, :cond_1

    .line 388
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    const-string v5, "null data returned from new media query"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "new media query return num items: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p1}, Lcom/android/camera/data/FilmstripItemList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 393
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/android/camera/data/FilmstripItemList;->get(I)Lcom/android/camera/data/FilmstripItem;

    move-result-object v2

    .line 396
    .local v2, "newestMedia":Lcom/android/camera/data/FilmstripItem;
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getContentId()J

    move-result-wide v0

    .line 397
    .local v0, "newLastMediaId":J
    invoke-static {}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$100()Lcom/android/camera/debug/Log$Tag;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updating last media id (old:new) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    .line 398
    invoke-static {v6}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 399
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    iget-object v5, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-static {v5}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$400(Lcom/android/camera/data/CameraFilmstripDataAdapter;)J

    move-result-wide v6

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->access$402(Lcom/android/camera/data/CameraFilmstripDataAdapter;J)J

    .line 414
    invoke-interface {v2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 413
    invoke-static {v4}, Lcom/android/camera/Storage;->getSessionUriFromContentUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 415
    .local v3, "sessionUri":Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->this$0:Lcom/android/camera/data/CameraFilmstripDataAdapter;

    invoke-virtual {v4, v2}, Lcom/android/camera/data/CameraFilmstripDataAdapter;->addOrUpdate(Lcom/android/camera/data/FilmstripItem;)Z

    .line 420
    :cond_2
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    if-eqz v4, :cond_0

    .line 421
    iget-object v4, p0, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->mDoneCallback:Lcom/android/camera/util/Callback;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/camera/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 332
    check-cast p1, Lcom/android/camera/data/FilmstripItemList;

    invoke-virtual {p0, p1}, Lcom/android/camera/data/CameraFilmstripDataAdapter$LoadNewMediaTask;->onPostExecute(Lcom/android/camera/data/FilmstripItemList;)V

    return-void
.end method
