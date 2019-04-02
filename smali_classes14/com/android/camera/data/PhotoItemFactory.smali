.class public Lcom/android/camera/data/PhotoItemFactory;
.super Ljava/lang/Object;
.source "PhotoItemFactory.java"

# interfaces
.implements Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory",
        "<",
        "Lcom/android/camera/data/PhotoItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

.field private final mPhotoDataFactory:Lcom/android/camera/data/PhotoDataFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PhotoItemFact"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/PhotoItemFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Landroid/content/ContentResolver;Lcom/android/camera/data/PhotoDataFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glideManager"    # Lcom/android/camera/data/GlideFilmstripManager;
    .param p3, "contentResolver"    # Landroid/content/ContentResolver;
    .param p4, "photoDataFactory"    # Lcom/android/camera/data/PhotoDataFactory;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/data/PhotoItemFactory;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/camera/data/PhotoItemFactory;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    .line 41
    iput-object p3, p0, Lcom/android/camera/data/PhotoItemFactory;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    iput-object p4, p0, Lcom/android/camera/data/PhotoItemFactory;->mPhotoDataFactory:Lcom/android/camera/data/PhotoDataFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/camera/data/PhotoItemFactory;->mPhotoDataFactory:Lcom/android/camera/data/PhotoDataFactory;

    invoke-virtual {v1, p1}, Lcom/android/camera/data/PhotoDataFactory;->fromCursor(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItemData;

    move-result-object v0

    .line 48
    .local v0, "data":Lcom/android/camera/data/FilmstripItemData;
    if-eqz v0, :cond_0

    .line 49
    new-instance v1, Lcom/android/camera/data/PhotoItem;

    iget-object v2, p0, Lcom/android/camera/data/PhotoItemFactory;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/data/PhotoItemFactory;->mGlideManager:Lcom/android/camera/data/GlideFilmstripManager;

    invoke-direct {v1, v2, v3, v0, p0}, Lcom/android/camera/data/PhotoItem;-><init>(Landroid/content/Context;Lcom/android/camera/data/GlideFilmstripManager;Lcom/android/camera/data/FilmstripItemData;Lcom/android/camera/data/PhotoItemFactory;)V

    .line 52
    :goto_0
    return-object v1

    .line 51
    :cond_0
    sget-object v1, Lcom/android/camera/data/PhotoItemFactory;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "skipping item with null data, returning null for item"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 62
    const/4 v7, 0x0

    .line 63
    .local v7, "newData":Lcom/android/camera/data/PhotoItem;
    const/4 v6, 0x0

    .line 65
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/data/PhotoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    if-eqz v6, :cond_0

    .line 68
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0, v6}, Lcom/android/camera/data/PhotoItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/PhotoItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 73
    :cond_0
    if-eqz v6, :cond_1

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_1
    return-object v7

    .line 73
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getFactoryType()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

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
            "Lcom/android/camera/data/PhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/data/PhotoItemFactory;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/camera/data/PhotoDataQuery;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id DESC"

    move-object v1, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    move-object v9, p0

    .line 89
    invoke-static/range {v0 .. v9}, Lcom/android/camera/data/FilmstripContentQueries;->forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JZJLjava/lang/String;Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;)Ljava/util/List;

    move-result-object v0

    .line 88
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
            "Lcom/android/camera/data/PhotoItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v1, Lcom/android/camera/data/PhotoDataQuery;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v2, -0x1

    move-object v0, p0

    move v4, p1

    move-wide v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentUri(Landroid/net/Uri;)Lcom/android/camera/data/PhotoItem;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 95
    move-object v0, p0

    move-object v1, p1

    move-wide v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/data/PhotoItemFactory;->queryAll(Landroid/net/Uri;JZJ)Ljava/util/List;

    move-result-object v7

    .line 96
    .local v7, "newPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/PhotoItem;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/PhotoItem;

    goto :goto_0
.end method
