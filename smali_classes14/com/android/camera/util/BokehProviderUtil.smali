.class public Lcom/android/camera/util/BokehProviderUtil;
.super Ljava/lang/Object;
.source "BokehProviderUtil.java"


# static fields
.field private static final BOKEH_EDITOR_DB_URI:Landroid/net/Uri;

.field private static final BOKEH_MEDIA_STORE_ID:Ljava/lang/String; = "media_store_id"

.field private static final BOKEH_SPECIAL_TYPE_ID:Ljava/lang/String; = "special_type_id"

.field private static final DUAL_SIGHT_SPECIAL_TYPE:Ljava/lang/String; = "DUAL_SIGHT_TYPE"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehProviderUtil"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/BokehProviderUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 30
    const-string v0, "content://com.evenwell.camera2.providers.SpecialTypesProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/camera/util/BokehProviderUtil;->BOKEH_EDITOR_DB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBokehContentValuesForDBData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p0, "mediaStoreId"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 38
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "media_store_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "special_type_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method public static updateImageToBokehEditor(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "mediaStoreId"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string v5, "DUAL_SIGHT_TYPE"

    invoke-static {p1, v5}, Lcom/android/camera/util/BokehProviderUtil;->getBokehContentValuesForDBData(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 48
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":I
    const/4 v3, 0x0

    .line 51
    .local v3, "uri":Landroid/net/Uri;
    :try_start_0
    sget-object v5, Lcom/android/camera/util/BokehProviderUtil;->BOKEH_EDITOR_DB_URI:Landroid/net/Uri;

    invoke-virtual {p0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 53
    if-gez v0, :cond_0

    .line 54
    sget-object v5, Lcom/android/camera/util/BokehProviderUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not insert medie_store_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to BokehEditor, update it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    const/4 v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 56
    .local v1, "selectArgs":[Ljava/lang/String;
    sget-object v5, Lcom/android/camera/util/BokehProviderUtil;->BOKEH_EDITOR_DB_URI:Landroid/net/Uri;

    const-string v6, "media_store_id=?"

    invoke-virtual {p0, v5, v4, v6, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 57
    if-lez v0, :cond_0

    .line 58
    sget-object v5, Lcom/android/camera/util/BokehProviderUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update medie_store_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " success"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "selectArgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 62
    :catch_0
    move-exception v2

    .line 68
    .local v2, "th":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/camera/util/BokehProviderUtil;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write Bokeh Editor Database"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method
