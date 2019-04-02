.class public Lcom/android/camera/data/NewestFirstComparator;
.super Ljava/lang/Object;
.source "NewestFirstComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/camera/data/FilmstripItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final MILLIS_IN_DAY:I = 0x5265c00


# instance fields
.field private final mNow:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;)V
    .locals 6
    .param p1, "now"    # Ljava/util/Date;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/data/NewestFirstComparator;->mNow:Ljava/util/Date;

    .line 45
    return-void
.end method

.method private compareDate(Ljava/util/Date;Ljava/util/Date;)I
    .locals 1
    .param p1, "v1"    # Ljava/util/Date;
    .param p2, "v2"    # Ljava/util/Date;

    .prologue
    .line 74
    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private isFuture(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/data/NewestFirstComparator;->mNow:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/data/FilmstripItem;)I
    .locals 7
    .param p1, "d1"    # Lcom/android/camera/data/FilmstripItem;
    .param p2, "d2"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    .line 50
    .local v1, "d1Data":Lcom/android/camera/data/FilmstripItemData;
    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v3

    .line 53
    .local v3, "d2Data":Lcom/android/camera/data/FilmstripItemData;
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/data/NewestFirstComparator;->isFuture(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v2

    .line 55
    .local v2, "d1PrimaryDate":Ljava/util/Date;
    :goto_0
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/data/NewestFirstComparator;->isFuture(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v4

    .line 58
    .local v4, "d2PrimaryDate":Ljava/util/Date;
    :goto_1
    invoke-direct {p0, v2, v4}, Lcom/android/camera/data/NewestFirstComparator;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 59
    .local v0, "cmp":I
    if-nez v0, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v5

    .line 61
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v6

    .line 60
    invoke-direct {p0, v5, v6}, Lcom/android/camera/data/NewestFirstComparator;->compareDate(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 63
    :cond_0
    if-nez v0, :cond_1

    .line 64
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 66
    :cond_1
    return v0

    .line 54
    .end local v0    # "cmp":I
    .end local v2    # "d1PrimaryDate":Ljava/util/Date;
    .end local v4    # "d2PrimaryDate":Ljava/util/Date;
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v2

    goto :goto_0

    .line 56
    .restart local v2    # "d1PrimaryDate":Ljava/util/Date;
    :cond_3
    invoke-virtual {v3}, Lcom/android/camera/data/FilmstripItemData;->getCreationDate()Ljava/util/Date;

    move-result-object v4

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/android/camera/data/FilmstripItem;

    check-cast p2, Lcom/android/camera/data/FilmstripItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/NewestFirstComparator;->compare(Lcom/android/camera/data/FilmstripItem;Lcom/android/camera/data/FilmstripItem;)I

    move-result v0

    return v0
.end method
