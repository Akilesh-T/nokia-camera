.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 5
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, -0x1

    .line 32
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    if-nez p0, :cond_3

    .line 35
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 36
    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 37
    :cond_3
    if-nez p1, :cond_5

    .line 38
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_4

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 39
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v4, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 41
    :cond_5
    const-string v2, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE"

    .line 42
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v3, :cond_6

    const-string v2, "android.media.browse.extra.PAGE_SIZE"

    .line 43
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.media.browse.extra.PAGE_SIZE"

    .line 44
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 10
    .param p0, "options1"    # Landroid/os/Bundle;
    .param p1, "options2"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    .line 49
    if-nez p0, :cond_2

    move v2, v8

    .line 50
    .local v2, "page1":I
    :goto_0
    if-nez p1, :cond_3

    move v3, v8

    .line 51
    .local v3, "page2":I
    :goto_1
    if-nez p0, :cond_4

    move v4, v8

    .line 53
    .local v4, "pageSize1":I
    :goto_2
    if-nez p1, :cond_5

    move v5, v8

    .line 57
    .local v5, "pageSize2":I
    :goto_3
    if-eq v2, v8, :cond_0

    if-ne v4, v8, :cond_6

    .line 58
    :cond_0
    const/4 v6, 0x0

    .line 59
    .local v6, "startIndex1":I
    const v0, 0x7fffffff

    .line 65
    .local v0, "endIndex1":I
    :goto_4
    if-eq v3, v8, :cond_1

    if-ne v5, v8, :cond_7

    .line 66
    :cond_1
    const/4 v7, 0x0

    .line 67
    .local v7, "startIndex2":I
    const v1, 0x7fffffff

    .line 74
    .local v1, "endIndex2":I
    :goto_5
    if-lt v0, v7, :cond_8

    if-lt v1, v6, :cond_8

    const/4 v8, 0x1

    :goto_6
    return v8

    .line 49
    .end local v0    # "endIndex1":I
    .end local v1    # "endIndex2":I
    .end local v2    # "page1":I
    .end local v3    # "page2":I
    .end local v4    # "pageSize1":I
    .end local v5    # "pageSize2":I
    .end local v6    # "startIndex1":I
    .end local v7    # "startIndex2":I
    :cond_2
    const-string v9, "android.media.browse.extra.PAGE"

    invoke-virtual {p0, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 50
    .restart local v2    # "page1":I
    :cond_3
    const-string v9, "android.media.browse.extra.PAGE"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    .line 51
    .restart local v3    # "page2":I
    :cond_4
    const-string v9, "android.media.browse.extra.PAGE_SIZE"

    .line 52
    invoke-virtual {p0, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_2

    .line 53
    .restart local v4    # "pageSize1":I
    :cond_5
    const-string v9, "android.media.browse.extra.PAGE_SIZE"

    .line 54
    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    goto :goto_3

    .line 61
    .restart local v5    # "pageSize2":I
    :cond_6
    mul-int v6, v4, v2

    .line 62
    .restart local v6    # "startIndex1":I
    add-int v9, v6, v4

    add-int/lit8 v0, v9, -0x1

    .restart local v0    # "endIndex1":I
    goto :goto_4

    .line 69
    :cond_7
    mul-int v7, v5, v3

    .line 70
    .restart local v7    # "startIndex2":I
    add-int v8, v7, v5

    add-int/lit8 v1, v8, -0x1

    .restart local v1    # "endIndex2":I
    goto :goto_5

    .line 74
    :cond_8
    const/4 v8, 0x0

    goto :goto_6
.end method
