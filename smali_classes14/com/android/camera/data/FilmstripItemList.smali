.class public Lcom/android/camera/data/FilmstripItemList;
.super Ljava/lang/Object;
.source "FilmstripItemList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/FilmstripItemList$UriWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/data/FilmstripItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/camera/data/FilmstripItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "LocalDataList"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/data/FilmstripItemList;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public add(Lcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public addAll(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/camera/data/FilmstripItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "filmstripItemList":Ljava/util/List;, "Ljava/util/List<+Lcom/android/camera/data/FilmstripItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    .line 101
    .local v0, "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    invoke-virtual {p0, v0}, Lcom/android/camera/data/FilmstripItemList;->add(Lcom/android/camera/data/FilmstripItem;)V

    goto :goto_0

    .line 103
    .end local v0    # "filmstripItem":Lcom/android/camera/data/FilmstripItem;
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/camera/data/FilmstripItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method public get(Landroid/net/Uri;)Lcom/android/camera/data/FilmstripItem;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/FilmstripItem;

    return-object v0
.end method

.method public indexOf(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const/4 v0, -0x1

    .line 122
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/camera/data/FilmstripItemList$UriWrapper;

    invoke-direct {v1, p1}, Lcom/android/camera/data/FilmstripItemList$UriWrapper;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized remove(I)Lcom/android/camera/data/FilmstripItem;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/FilmstripItem;

    .line 72
    .local v1, "removedItem":Lcom/android/camera/data/FilmstripItem;
    iget-object v2, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "removedItem":Lcom/android/camera/data/FilmstripItem;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    :try_start_1
    sget-object v2, Lcom/android/camera/data/FilmstripItemList;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not remove item. Not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public set(ILcom/android/camera/data/FilmstripItem;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "data"    # Lcom/android/camera/data/FilmstripItem;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mUriMap:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/camera/data/FilmstripItem;->getData()Lcom/android/camera/data/FilmstripItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/FilmstripItemData;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/camera/data/FilmstripItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/camera/data/FilmstripItem;>;"
    iget-object v0, p0, Lcom/android/camera/data/FilmstripItemList;->mList:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 111
    return-void
.end method
