.class public final Lcom/google/android/apps/photos/api/IconQuery;
.super Ljava/lang/Object;
.source "IconQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/photos/api/IconQuery$Type;
    }
.end annotation


# static fields
.field public static final MATCH_PATH_BADGE:Ljava/lang/String; = "icon/#/badge"

.field public static final MATCH_PATH_DIALOG:Ljava/lang/String; = "icon/#/dialog"

.field public static final MATCH_PATH_EDITOR:Ljava/lang/String; = "icon/#/editor"

.field public static final MATCH_PATH_ICON_BASE:Ljava/lang/String; = "icon/#"

.field public static final MATCH_PATH_INTERACT:Ljava/lang/String; = "icon/#/interact"

.field public static final MATCH_PATH_SEARCH:Ljava/lang/String; = "icon/#/search"

.field public static final PATH_ICON:Ljava/lang/String; = "icon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUriForBadgeIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->BADGE:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForDialogIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->DIALOG:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForEditorIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 91
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->EDITOR:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForInteractIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->INTERACT:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriForSearchIcon(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p0, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 69
    sget-object v0, Lcom/google/android/apps/photos/api/IconQuery$Type;->SEARCH:Lcom/google/android/apps/photos/api/IconQuery$Type;

    invoke-static {p0, v0}, Lcom/google/android/apps/photos/api/IconQuery;->getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUriForType(Landroid/net/Uri;Lcom/google/android/apps/photos/api/IconQuery$Type;)Landroid/net/Uri;
    .locals 2
    .param p0, "iconUri"    # Landroid/net/Uri;
    .param p1, "type"    # Lcom/google/android/apps/photos/api/IconQuery$Type;

    .prologue
    .line 94
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/photos/api/IconQuery$Type;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 94
    return-object v0
.end method
