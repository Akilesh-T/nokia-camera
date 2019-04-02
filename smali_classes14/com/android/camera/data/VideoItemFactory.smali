.class public Lcom/android/camera/data/VideoItemFactory;
.super Ljava/lang/Object;
.source "VideoItemFactory.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory",
        "<",
        "Lcom/android/camera/data/VideoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUERY_ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private final mVideoDataFactory:Lcom/android/camera/data/VideoDataFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoItemFact"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/VideoItemFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Landroid/content/ContentResolver;Lcom/android/camera/data/VideoDataFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glideManager"    # Lcom/android/camera/data/GlideFilmstripManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "videoDataFactory"    # Lcom/android/camera/data/VideoDataFactory;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/camera/data/VideoItemFactory;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/camera/data/VideoItemFactory;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 44
    iput-object p3, p0, Lcom/android/camera/data/VideoItemFactory;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    iput-object p4, p0, Lcom/android/camera/data/VideoItemFactory;->mVideoDataFactory:Lcom/android/camera/data/VideoDataFactory;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/android/camera/data/VideoItemFactory;->mVideoDataFactory:Lcom/android/camera/data/VideoDataFactory;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/VideoDataFactory;->fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItemData;

    move-result-object v0

    .line 51
    .local v0, "data":Lcom/android/camera/data/VideoItemData;
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lcom/android/camera/data/VideoItem;

    iget-object v2, p0, Lcom/android/camera/data/VideoItemFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/data/VideoItemFactory;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/android/camera/data/VideoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/VideoItemData;Lcom/android/camera/data/VideoItemFactory;)V

    .line 55
    :goto_0
    return-object v1

    .line 54
    :cond_0
    sget-object v1, Lcom/android/camera/data/VideoItemFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "skipping item with null data, returning null for item"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 66
    const/4 v7, 0x0

    .line 67
    .local v7, "newData":Lcom/android/camera/data/VideoItem;
    const/4 v6, 0x0

    .line 69
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0, v6}, Lcom/android/camera/data/VideoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/VideoItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 78
    :cond_0
    if-eqz v6, :cond_1

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    :cond_1
    return-object v7

    .line 78
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getFactoryType()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "lastId"    # J
    .param p4, "isSecure"    # Z
    .param p5, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/VideoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/data/VideoItemFactory;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/data/VideoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v8, "datetaken DESC, _id DESC"

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    move-object v9, p0

    .line 94
    invoke-static/range {v0 .. v9}, Lcom/android/camera/data/FilmstripContentQueries;->forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JZJLjava/lang/String;Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;)Ljava/util/List;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public queryAll(ZJ)Ljava/util/List;
    .locals 8
    .param p1, "isSecure"    # Z
    .param p2, "onCreateTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/VideoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    sget-object v1, Lcom/android/camera/data/VideoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    move-object v0, p0

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/VideoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/VideoItem;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 100
    move-object v0, p0

    move-object v1, p1

    move-wide v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/VideoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v7

    .line 101
    .local v7, "videos":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/VideoItem;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/VideoItem;

    goto :goto_0
.end method
