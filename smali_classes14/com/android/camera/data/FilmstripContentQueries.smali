.class public Lcom/android/camera/data/FilmstripContentQueries;
.super Ljava/lang/Object;
.source "FilmstripContentQueries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;
    }
.end annotation


# static fields
.field private static final CAMERA_PATH:Ljava/lang/String;

.field private static final SELECT_BY_PATH:Ljava/lang/String; = "_data LIKE ?"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LocalDataQuery"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/FilmstripContentQueries;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/data/FilmstripContentQueries;->CAMERA_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forCameraPath(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;JZJLjava/lang/String;Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;)Ljava/util/List;
    .locals 15
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "minimumId"    # J
    .param p5, "isSecure"    # Z
    .param p6, "onCreateTime"    # J
    .param p8, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Lcom/android/camera/data/FilmstripItem;",
            ">(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "JZJ",
            "Ljava/lang/String;",
            "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory",
            "<TI;>;)",
            "Ljava/util/List",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p9, "factory":Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;, "Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory<TI;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v1, "(_data LIKE ?"

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .local v14, "selectionBuilder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 73
    const-string v1, " OR _data LIKE ?) AND _id > ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v13, "selectionArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY_PHONE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/android/camera/Storage;->DCIM_SDCARD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->DIRECTORY_SDCARD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    if-eqz p5, :cond_1

    .line 86
    invoke-interface/range {p9 .. p9}, Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;->getFactoryType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    const-string v11, "datetaken"

    .line 97
    .local v11, "key_date_taken":Ljava/lang/String;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v11    # "key_date_taken":Ljava/lang/String;
    :cond_1
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "selection":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 103
    .local v5, "selectionArgs":[Ljava/lang/String;
    invoke-interface {v13, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 105
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v12, "result":Ljava/util/List;, "Ljava/util/List<TI;>;"
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p8

    .line 108
    :try_start_0
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 110
    if-eqz v7, :cond_2

    .line 111
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    move-object/from16 v0, p9

    invoke-interface {v0, v7}, Lcom/android/camera/data/FilmstripContentQueries$CursorToFilmstripItemFactory;->get(Landroid/database/Cursor;)Lcom/android/camera/data/FilmstripItem;

    move-result-object v10

    .line 113
    .local v10, "item":Lcom/android/camera/data/FilmstripItem;, "TI;"
    if-eqz v10, :cond_5

    .line 114
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v10    # "item":Lcom/android/camera/data/FilmstripItem;, "TI;"
    :cond_2
    if-eqz v7, :cond_3

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_3
    :goto_3
    return-object v12

    .line 75
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v12    # "result":Ljava/util/List;, "Ljava/util/List<TI;>;"
    .end local v13    # "selectionArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    const-string v1, ") AND _id > ?"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 88
    .restart local v13    # "selectionArgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_0
    const-string v11, "datetaken"

    .line 89
    .restart local v11    # "key_date_taken":Ljava/lang/String;
    goto :goto_1

    .line 91
    .end local v11    # "key_date_taken":Ljava/lang/String;
    :pswitch_1
    const-string v11, "datetaken"

    .line 92
    .restart local v11    # "key_date_taken":Ljava/lang/String;
    goto :goto_1

    .line 117
    .end local v11    # "key_date_taken":Ljava/lang/String;
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "item":Lcom/android/camera/data/FilmstripItem;, "TI;"
    .restart local v12    # "result":Ljava/util/List;, "Ljava/util/List<TI;>;"
    :cond_5
    :try_start_1
    const-string v1, "_data"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 118
    .local v8, "dataIndex":I
    sget-object v1, Lcom/android/camera/data/FilmstripContentQueries;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 122
    .end local v8    # "dataIndex":I
    .end local v10    # "item":Lcom/android/camera/data/FilmstripItem;, "TI;"
    :catch_0
    move-exception v9

    .line 123
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v1, Lcom/android/camera/data/FilmstripContentQueries;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "fail to load data."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-eqz v7, :cond_3

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 125
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 86
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
