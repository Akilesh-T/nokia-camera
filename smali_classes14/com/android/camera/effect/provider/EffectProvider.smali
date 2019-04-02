.class public Lcom/android/camera/effect/provider/EffectProvider;
.super Landroid/content/ContentProvider;
.source "EffectProvider.java"


# static fields
.field private static final MATCHED_PROFILE_TABLE:I

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private db:Lcom/android/camera/effect/provider/EffectProviderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 29
    sget-object v0, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract;->authorities:Ljava/lang/String;

    sget-object v2, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    invoke-virtual {v1}, Lcom/android/camera/effect/provider/EffectProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 44
    .local v0, "helper":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 51
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 47
    :pswitch_0
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDB()Lcom/android/camera/effect/provider/EffectProviderHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v6, 0x0

    .line 63
    iget-object v4, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    invoke-virtual {v4}, Lcom/android/camera/effect/provider/EffectProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 64
    .local v0, "helper":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 66
    .local v2, "rowId":J
    sget-object v4, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 80
    :cond_0
    new-instance v4, Landroid/database/SQLException;

    const-string v5, "Failed to insert row into "

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :pswitch_0
    sget-object v4, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 69
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 70
    sget-object v4, Lcom/android/camera/effect/provider/EffectProviderContract;->URI_EFFECT:Landroid/net/Uri;

    .line 71
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 73
    .local v1, "tmpUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/camera/effect/provider/EffectProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 74
    return-object v1

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/android/camera/effect/provider/EffectProviderHelper;

    invoke-virtual {p0}, Lcom/android/camera/effect/provider/EffectProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/camera/effect/provider/EffectProviderContract;->DB_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/effect/provider/EffectProviderContract;->DB_VERSION:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/provider/EffectProviderHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v1, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    invoke-virtual {v1}, Lcom/android/camera/effect/provider/EffectProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, "helper":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 108
    :goto_0
    return-object v5

    .line 102
    :pswitch_0
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/camera/effect/provider/EffectProvider;->db:Lcom/android/camera/effect/provider/EffectProviderHelper;

    invoke-virtual {v1}, Lcom/android/camera/effect/provider/EffectProviderHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, "helper":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/camera/effect/provider/EffectProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 134
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 129
    :pswitch_0
    sget-object v1, Lcom/android/camera/effect/provider/EffectProviderContract$EffectTable;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
