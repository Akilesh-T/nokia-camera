.class public Lcom/facebook/marketing/internal/ButtonIndexingLogger;
.super Ljava/lang/Object;
.source "ButtonIndexingLogger.java"


# static fields
.field private static final API_ENDPOINT:Ljava/lang/String; = "%s/button_indexing"

.field private static final TAG:Ljava/lang/String;

.field private static volatile clickedKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile loadedKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->loadedKeySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static generateButtonDetail(Landroid/view/View;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 19
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "isFromClick"    # Z

    .prologue
    .line 63
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v14, "result":Lorg/json/JSONObject;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v13, "path":Lorg/json/JSONArray;
    const-string v17, "\\."

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, "indexList":[Ljava/lang/String;
    move-object/from16 v7, p0

    .line 67
    .local v7, "currentView":Landroid/view/View;
    array-length v0, v11

    move/from16 v17, v0

    add-int/lit8 v10, v17, -0x1

    .line 68
    .local v10, "i":I
    :goto_0
    if-eqz v7, :cond_3

    .line 69
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v6, "currentPath":Lorg/json/JSONObject;
    const-string v17, "classname"

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v17, "index"

    aget-object v18, v11, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v17, "id"

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-static {v7}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isSensitiveUserData(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v16, ""

    .line 76
    .local v16, "text":Ljava/lang/String;
    :goto_1
    const-string v17, "text"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v18, "tag"

    .line 78
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_1

    const-string v17, ""

    .line 77
    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v18, "description"

    .line 80
    invoke-virtual {v7}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    if-nez v17, :cond_2

    const-string v17, ""

    .line 79
    :goto_3
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    invoke-static {v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    .line 84
    add-int/lit8 v10, v10, -0x1

    .line 85
    goto :goto_0

    .line 75
    .end local v16    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    .line 78
    .restart local v16    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 81
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 86
    .end local v6    # "currentPath":Lorg/json/JSONObject;
    .end local v16    # "text":Ljava/lang/String;
    :cond_3
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    .line 87
    .local v15, "revertedPath":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    add-int/lit8 v12, v17, -0x1

    .local v12, "j":I
    :goto_4
    if-ltz v12, :cond_4

    .line 88
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 87
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 90
    :cond_4
    const-string v17, "path"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v17, "is_from_click"

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 93
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    .local v5, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v17, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v18, 0x64

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 96
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 97
    .local v4, "byteArray":[B
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v9

    .line 98
    .local v9, "encoded":Ljava/lang/String;
    const-string v17, "image"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "byteArray":[B
    .end local v5    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "currentView":Landroid/view/View;
    .end local v9    # "encoded":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "indexList":[Ljava/lang/String;
    .end local v12    # "j":I
    .end local v13    # "path":Lorg/json/JSONArray;
    .end local v14    # "result":Lorg/json/JSONObject;
    .end local v15    # "revertedPath":Lorg/json/JSONArray;
    :cond_5
    :goto_5
    return-object v14

    .line 101
    :catch_0
    move-exception v8

    .line 102
    .local v8, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    const-string v18, "Log button indexing error"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    goto :goto_5
.end method

.method public static logAllIndexing(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p0, "tree"    # Lorg/json/JSONObject;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;

    invoke-direct {v1, p1, p0}, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public static logIndexing(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mapKey"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 133
    sget-object v2, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    sget-object v2, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static {p1, p2, v3}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->generateButtonDetail(Landroid/view/View;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 138
    .local v0, "detail":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 139
    new-instance v1, Lorg/json/JSONArray;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v1, "paths":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2, p0}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->sendGraphAPIRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendGraphAPIRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 109
    .line 110
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v1

    .line 111
    .local v1, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 112
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "version":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v3, "publishParams":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "app_version"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "indexed_button_list"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v5, 0x0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s/button_indexing"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    .line 119
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 117
    invoke-static {v5, v6, v7, v8}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 122
    .local v2, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v2    # "postRequest":Lcom/facebook/GraphRequest;
    .end local v3    # "publishParams":Landroid/os/Bundle;
    .end local v4    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v3    # "publishParams":Landroid/os/Bundle;
    .restart local v4    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    const-string v6, "failed to send button indexing request"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
