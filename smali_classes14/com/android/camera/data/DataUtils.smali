.class public Lcom/android/camera/data/DataUtils;
.super Ljava/lang/Object;
.source "DataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathFromURI(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, 0x0

    .line 30
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 33
    .local v2, "proj":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 35
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 36
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 38
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 43
    .end local v6    # "columnIndex":I
    :goto_0
    return-object v0

    .line 41
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 43
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
