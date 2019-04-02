.class public Lcom/android/camera/util/IntentHelper;
.super Ljava/lang/Object;
.source "IntentHelper.java"


# static fields
.field public static final IS_CAPTURE_INTENT:Ljava/lang/String; = "is_capture_intent"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "IntentHelper"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/IntentHelper;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGalleryAppName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryIntent"    # Landroid/content/Intent;

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/camera/util/GalleryHelper;->getGalleryAppName(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getGalleryIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "galleryIntent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/android/camera/util/GalleryHelper;->getGalleryIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getGalleryIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, 0x10000

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/camera/util/GalleryHelper;->setGalleryIntentClassName(Landroid/content/Context;Landroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 41
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 42
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 43
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "intent_backup":Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/android/camera/util/GalleryHelper;->setBackupGalleryIntentClassName(Landroid/content/Context;Landroid/content/Intent;)V

    .line 47
    invoke-virtual {v2, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 49
    .local v4, "resolveInfos_backup":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 55
    .end local v1    # "intent_backup":Landroid/content/Intent;
    .end local v4    # "resolveInfos_backup":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public static getVideoPlayerIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 69
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 68
    return-object v0
.end method
